import 'package:flutter/material.dart';

import 'package:payoor_mobile/src/models/_cart.dart';

import 'package:payoor_mobile/src/helpers/_colorsys.dart';

class BestSellerCard extends StatefulWidget {
  final String itemname;
  final double price;
  final String imageUrl;
  final String itemId;

  const BestSellerCard({
    Key? key,
    required this.itemname,
    required this.price,
    required this.imageUrl,
    required this.itemId,
  }) : super(key: key);

  @override
  State<BestSellerCard> createState() => _BestSellerCardState();
}

class _BestSellerCardState extends State<BestSellerCard> {
  int quantity = 1;

  void increasequantity() {
    // Implement your functionality
    setState(() {
      quantity++;
    });
    // You can modify state variables, make API calls, navigate to other screens, etc.
  }

  void reducequantity() {
    if (quantity == 1) {
      return;
    }
    // Implement your functionality
    setState(() {
      quantity--;
    });
    // You can modify state variables, make API calls, navigate to other screens, etc.
  }

  UserCart userCart = UserCart();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<CartModel>>(
        valueListenable: UserCart(),
        builder: (context, cartModelItems, child) {
          final initialItem = UserCart().cartModelItem(itemid: widget.itemId);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9.0),
                    child: Image.network(
                      widget.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(widget.itemname,
                  style: TextStyle(
                    fontSize: 12.0, // Font size
                    fontWeight: FontWeight.w400,
                    color: Colorsystem.fontblack,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                'NGN${widget.price}',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  color: Colorsystem.fontblack,
                ),
                textAlign: TextAlign.left, // Set the text alignment to center
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(5.0), // Add rounded corners
                  border: Border.all(
                      color: Colorsystem.bordergrey, width: 1.0), // Add border
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.09,
                        height: MediaQuery.of(context).size.height * 0.04,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                          border: Border.all(
                              color: Colorsystem.bordergrey, width: 1),
                          color: Colorsystem.bordergrey,
                        ),
                        child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Center(
                                child: GestureDetector(
                                    onTap: () {
                                      final existingitem = userCart
                                          .cartModelItem(itemid: widget.itemId);

                                      if (existingitem != null) {
                                        UserCart().reduceQuantity(
                                            itemid: existingitem.itemid);

                                        setState(() {
                                          quantity = existingitem.quantity;
                                        });
                                      } else {
                                        reducequantity();
                                      }
                                    },
                                    child: Text('-',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colorsystem.fontblack,
                                        )))))),
                    SizedBox(
                        child: Text(
                      initialItem?.quantity.toString() ?? '$quantity',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: Colorsystem.fontblack,
                      ),
                      textAlign: TextAlign.center,
                    )),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.09,
                        height: MediaQuery.of(context).size.height * 0.04,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                          border: Border.all(
                              color: Colorsystem.bordergrey, width: 1),
                          color: Colorsystem.bordergrey,
                        ),
                        child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Center(
                                child: GestureDetector(
                                    onTap: () {
                                      final existingitem = userCart
                                          .cartModelItem(itemid: widget.itemId);

                                      if (existingitem != null) {
                                        UserCart().increaseQuantity(
                                            itemid: existingitem.itemid);

                                        setState(() {
                                          quantity = existingitem.quantity;
                                        });
                                      } else {
                                        increasequantity();
                                      }
                                    },
                                    child: Text('+',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colorsystem.fontblack,
                                        )))))),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.05, // Set the desired height
                width:
                    MediaQuery.of(context).size.width, // Set the desired width
                child: userCart.cartModelItem(itemid: widget.itemId) != null
                    ? ElevatedButton(
                        onPressed: () {
                          final item =
                              userCart.cartModelItem(itemid: widget.itemId);

                          if (item != null) {
                            userCart.remove(cartModelItem: item);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text('Remove from Cart',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Colorsystem.white,
                            )),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          final item = CartModel(
                              itemname: widget.itemname,
                              price: widget.price,
                              quantity: quantity,
                              itemid: widget.itemId);

                          userCart.add(cartModelItem: item);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colorsystem.primary,
                          foregroundColor: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text('Add to Cart',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colorsystem.white,
                            )),
                      ),
              )
            ],
          );
        });
  }
}
