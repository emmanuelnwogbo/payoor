import 'package:flutter/material.dart';

import 'package:payoor_mobile/src/components/_header.dart';
import 'package:payoor_mobile/src/components/_bottomnav.dart';

import 'package:payoor_mobile/src/models/_cart.dart';

import 'package:payoor_mobile/src/helpers/_colorsys.dart';
import 'package:payoor_mobile/src/helpers/_variables.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: 'Checkout'),
      body: Padding(
          padding: mainSideUpPadding,
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Expanded(
                      child: ValueListenableBuilder<List<CartModel>>(
                          valueListenable: UserCart(),
                          builder: (context, cartModelItems, child) {
                            return ListView.builder(
                                itemCount: cartModelItems.length + 1,
                                itemBuilder: (context, index) {
                                  if (index < cartModelItems.length) {
                                    final carmodelitem = cartModelItems[index];

                                    return Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 30.0),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              carmodelitem
                                                  .itemname, // Remove single quotes
                                              style: const TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w500,
                                                // You can add more styling properties here
                                              ),
                                            ),
                                            Text(
                                              'NGN${carmodelitem.totalValue.toString()}', // Convert to string if it's not already
                                              style: const TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w500,
                                                // You can add more styling properties here
                                              ),
                                            ),
                                          ],
                                        ));
                                  } else {
                                    return Column(
                                      children: [
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Delivery Date',
                                                    style: TextStyle(
                                                      fontSize: 13.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          Colorsystem.fontblack,
                                                    )),
                                                Text(
                                                    'Monday 25th September 2023',
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colorsystem.goldtext,
                                                    )),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                                Text('Delivery Address',
                                                    style: TextStyle(
                                                      fontSize: 13.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          Colorsystem.fontblack,
                                                    )),
                                                Text(
                                                    'Monday 25th September 2023',
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colorsystem.goldtext,
                                                    )),
                                                const SizedBox(
                                                  height: 30,
                                                )
                                              ],
                                            )),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Column(
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        'Sub total (${cartModelItems.length} ${cartModelItems.length > 1 ? 'items' : 'item'})',
                                                        style: TextStyle(
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colorsystem
                                                              .fontblack,
                                                        )),
                                                    Text('NGN 2,700.00',
                                                        style: TextStyle(
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colorsystem
                                                              .fontblack,
                                                        )),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Delivery fee',
                                                        style: TextStyle(
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colorsystem
                                                              .fontblack,
                                                        )),
                                                    Text('NGN 2,700.00',
                                                        style: TextStyle(
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colorsystem
                                                              .fontblack,
                                                        )),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Service charge',
                                                        style: TextStyle(
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colorsystem
                                                              .fontblack,
                                                        )),
                                                    Text('NGN 250',
                                                        style: TextStyle(
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colorsystem
                                                              .fontblack,
                                                        )),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Total',
                                                        style: TextStyle(
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colorsystem
                                                              .fontblack,
                                                        )),
                                                    Text('NGN${UserCart().calculateTotalSum()}',
                                                        style: TextStyle(
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colorsystem
                                                              .fontblack,
                                                        )),
                                                  ],
                                                )
                                              ],
                                            )),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Column(
                                              children: [
                                                const SizedBox(height: 10),
                                                SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    child: ElevatedButton(
                                                      onPressed: () async {
                                                        await Navigator.of(
                                                                context)
                                                            .pushNamed(
                                                                '/makepayment');
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Colorsystem.primary,
                                                        foregroundColor:
                                                            Colors.white,
                                                        elevation: 4,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      child: Text('Place order',
                                                          style: TextStyle(
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colorsystem
                                                                .white,
                                                          )),
                                                    )),
                                                const SizedBox(height: 30),
                                              ],
                                            ))
                                      ],
                                    );
                                  }
                                });
                          })),
                ],
              ))),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
