import 'package:flutter/material.dart';

import 'package:payoor_mobile/src/components/_header.dart';
import 'package:payoor_mobile/src/components/_bottomnav.dart';
import 'package:payoor_mobile/src/components/_cartitem.dart';

import 'package:payoor_mobile/src/models/_cart.dart';

import 'package:payoor_mobile/src/helpers/_colorsys.dart';
import 'package:payoor_mobile/src/helpers/_variables.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  double calculateTotalSum(List<CartModel> cartItems) {
    double totalSum = 0.0;
    for (final cartItem in cartItems) {
      totalSum += cartItem.totalValue;
    }
    return totalSum;
  }

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: 'Cart'),
      body: Padding(
          padding: mainSideUpPadding,
          child: ValueListenableBuilder<List<CartModel>>(
              valueListenable: UserCart(),
              builder: (context, cartModelItems, child) {
                return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        Expanded(
                            child: ListView.builder(
                                itemCount: cartModelItems.length,
                                itemBuilder: (context, index) {
                                  final cartmodelitem = cartModelItems[index];

                                  return Dismissible(
                                    onDismissed: (direction) {},
                                    key: ValueKey(cartmodelitem.id),
                                    child: CartItem(
                                      itemId: cartmodelitem.itemid,
                                    ),
                                  );
                                })),
                        Column(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                    Text(
                                      'Total: NGN${widget.calculateTotalSum(cartModelItems)}',
                                      style: const TextStyle(
                                        fontSize:
                                            12.0, // Adjust the font size as needed
                                        fontWeight: FontWeight.w500,
                                        // You can add more styling properties here
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: ElevatedButton(
                                          onPressed: () async {
                                            await Navigator.of(context)
                                                .pushNamed('/checkout');
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Colorsystem.primary,
                                            foregroundColor: Colors.white,
                                            elevation: 4,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          child: Text('Check out',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w400,
                                                color: Colorsystem.white,
                                              )),
                                        )),
                                    const SizedBox(height: 30),
                                  ],
                                ))
                          ],
                        )
                      ],
                    ));
              })),
      bottomNavigationBar: const BottomNav(),
    );
  }
}

/*SingleChildScrollView(
          child: Padding(
              padding: mainSidePadding,
              child: SizedBox(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    ValueListenableBuilder<List<CartModel>>(
                        valueListenable: UserCart(),
                        builder: (context, cartModelItems, child) {
                          return ListView.builder(
                              itemCount: cartModelItems.length,
                              itemBuilder: (context, index) {
                                final carmodelitem = cartModelItems[index];

                                return Dismissible(
                                  onDismissed: (direction) {},
                                  key: ValueKey(carmodelitem.id),
                                  child: const CartItem(),
                                );
                              });
                        })
                  ],
                ),
              )))*/
