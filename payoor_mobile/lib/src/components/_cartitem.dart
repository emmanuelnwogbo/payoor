import 'package:flutter/material.dart';

import 'package:payoor_mobile/src/models/_cart.dart';
import 'package:payoor_mobile/src/models/_product.dart';

import 'package:payoor_mobile/src/helpers/_colorsys.dart';

class CartItem extends StatefulWidget {
  final String itemId;

  const CartItem({
    Key? key,
    required this.itemId,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colorsystem.bordergrey,
              width: 1.3, // Adjust the border width as needed
            ),
          ),
        ),
        child: ValueListenableBuilder<List<CartModel>>(
            valueListenable: UserCart(),
            builder: (context, cartModelItems, child) {
              final userCartItem =
                  UserCart().cartModelItem(itemid: widget.itemId);
              final productModel =
                  Products().getbyItemId(itemid: userCartItem!.itemid);

              return Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    right: 0,
                    child: SizedBox(
                        width: 200.0,
                        //height: 20.0,
                        //color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 100,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      5.0), // Add rounded corners
                                  border: Border.all(
                                      color: Colorsystem.bordergrey,
                                      width: 1.0), // Add border
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween, // Center horizontally
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          //width: 40,
                                          //height: 20,
                                          //color: Colorsystem.bordergrey,
                                          child: Center(
                                            child: GestureDetector(
                                                onTap: () {
                                                  UserCart().reduceQuantity(
                                                      itemid:
                                                          userCartItem.itemid);
                                                },
                                                child: const SizedBox(
                                                  child: Text(
                                                    '-',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                )), // Function to call when tapped
                                          ),
                                        ),
                                        SizedBox(
                                            //width: 20,
                                            //height: 20,
                                            child: Text(
                                          userCartItem.quantity.toString(),
                                          style: const TextStyle(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        )),
                                        SizedBox(
                                          //width: 40,
                                          //height: 20,
                                          //color: Colorsystem.bordergrey,
                                          child: Center(
                                            child: GestureDetector(
                                                onTap: () {
                                                  UserCart().increaseQuantity(
                                                      itemid:
                                                          userCartItem.itemid);
                                                },
                                                child: const SizedBox(
                                                  child: Text(
                                                    '+',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                )), // Function to call when tapped
                                          ),
                                        ),
                                      ],
                                    )))
                          ],
                        )),
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.height * 0.12,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(9.0),
                                  child: Image.network(
                                    productModel!.imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  userCartItem.itemname,
                                  style: const TextStyle(
                                    fontSize:
                                        12.0, // Adjust the font size as needed
                                    fontWeight: FontWeight.w500,
                                    // You can add more styling properties here
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Text(
                                      'Price per Item:',
                                      style: TextStyle(
                                        fontSize:
                                            9.0, // Adjust the font size as needed
                                        fontWeight: FontWeight.w500,
                                        // You can add more styling properties here
                                      ),
                                    ),
                                    Text(
                                      'NGN${userCartItem.price}',
                                      style: const TextStyle(
                                        fontSize:
                                            10.0, // Adjust the font size as needed
                                        fontWeight: FontWeight
                                            .normal, // Adjust the font weight as needed
                                        // You can add more styling properties here
                                      ),
                                    ),
                                  ],
                                ),
                                /*const Row(
                                  children: [
                                    Text(
                                      'Quantity Purchased:',
                                      style: TextStyle(
                                        fontSize:
                                            9.0, // Adjust the font size as needed
                                        fontWeight: FontWeight
                                            .bold, // Adjust the font weight as needed
                                        // You can add more styling properties here
                                      ),
                                    ),
                                    Text(
                                      '1 Paint Bucket',
                                      style: TextStyle(
                                        fontSize:
                                            10.0, // Adjust the font size as needed
                                        fontWeight: FontWeight
                                            .normal, // Adjust the font weight as needed
                                        // You can add more styling properties here
                                      ),
                                    ),
                                  ],
                                )*/
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'NGN${userCartItem.totalValue}',
                              style: const TextStyle(
                                fontSize:
                                    11.0, // Adjust the font size as needed
                                fontWeight: FontWeight
                                    .w600, // Adjust the font weight as needed
                                // You can add more styling properties here
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ])
                ],
              );
            }));
  }
}
