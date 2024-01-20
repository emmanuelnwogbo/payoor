import 'package:flutter/material.dart';

import 'package:payoor_mobile/src/components/_header.dart';

import 'package:payoor_mobile/src/helpers/_colorsys.dart';
import 'package:payoor_mobile/src/helpers/_variables.dart';

class MakePayment extends StatefulWidget {
  const MakePayment({super.key});

  @override
  State<MakePayment> createState() => _MakePaymentState();
}

class _MakePaymentState extends State<MakePayment> {
  bool isCheckedCard = false;
  bool isCheckedBankTransfer = false;
  bool isCheckedBank = false;

  String valueToShow = 'Unchecked';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Header(title: 'Make Payment'),
        body: Padding(
            padding: mainSideUpPadding,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Colorsystem.transparentColor,
                      checkboxTheme: CheckboxThemeData(
                        fillColor: MaterialStateColor.resolveWith((states) =>
                            isCheckedCard
                                ? Colorsystem.transparentColor
                                : Colorsystem
                                    .transparentColor), // Color for checked checkbox
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Card',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colorsystem.fontblack,
                                )),
                            SizedBox(
                              height: 18,
                              width: 18,
                              child: Stack(
                                children: [
                                  Container(
                                      height: 17,
                                      width: 17,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            50.0), // Add rounded corners
                                        border: Border.all(
                                            color: Colorsystem.bordergrey,
                                            width: 1.0), // Add border
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.all(2.3),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: valueToShow == 'Card'
                                                  ? Colorsystem.primary
                                                  : Colorsystem
                                                      .transparentColor,
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                            ),
                                          ))),
                                  Checkbox(
                                    value:
                                        isCheckedCard, // Pass the checkbox state
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        isCheckedCard = newValue ??
                                            false; // Update the checkbox state

                                        isCheckedBankTransfer = false;
                                        isCheckedBank = false;
                                        valueToShow = isCheckedCard
                                            ? 'Card'
                                            : 'None'; // Update the value
                                      });
                                    },
                                    activeColor: Colorsystem
                                        .transparentColor, // Color of the checkbox itself
                                    checkColor: Colorsystem.transparentColor,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Bank Transfer',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colorsystem.fontblack,
                                )),
                            SizedBox(
                              height: 18,
                              width: 18,
                              child: Stack(
                                children: [
                                  Container(
                                      height: 17,
                                      width: 17,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            50.0), // Add rounded corners
                                        border: Border.all(
                                            color: Colorsystem.bordergrey,
                                            width: 1.0), // Add border
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.all(2.3),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  valueToShow == 'Bank Transfer'
                                                      ? Colorsystem.primary
                                                      : Colorsystem
                                                          .transparentColor,
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                            ),
                                          ))),
                                  Checkbox(
                                    value:
                                        isCheckedBankTransfer, // Pass the checkbox state
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        isCheckedBankTransfer = newValue ??
                                            false; // Update the checkbox state

                                        isCheckedCard = false;
                                        isCheckedBank = false;

                                        valueToShow = isCheckedBankTransfer
                                            ? 'Bank Transfer'
                                            : 'None'; // Update the value
                                      });
                                    },
                                    activeColor: Colorsystem
                                        .transparentColor, // Color of the checkbox itself
                                    checkColor: Colorsystem.transparentColor,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Bank',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colorsystem.fontblack,
                                )),
                            SizedBox(
                              height: 18,
                              width: 18,
                              child: Stack(
                                children: [
                                  Container(
                                      height: 17,
                                      width: 17,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            50.0), // Add rounded corners
                                        border: Border.all(
                                            color: Colorsystem.bordergrey,
                                            width: 1.0), // Add border
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.all(2.3),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: valueToShow == 'Bank'
                                                  ? Colorsystem.primary
                                                  : Colorsystem
                                                      .transparentColor,
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                            ),
                                          ))),
                                  Checkbox(
                                    value:
                                        isCheckedBank, // Pass the checkbox state
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        isCheckedBank = newValue ??
                                            false; // Update the checkbox state

                                        isCheckedCard = false;
                                        isCheckedBankTransfer = false;

                                        valueToShow = isCheckedBank
                                            ? 'Bank'
                                            : 'None'; // Update the value
                                      });
                                    },
                                    activeColor: Colorsystem
                                        .transparentColor, // Color of the checkbox itself
                                    checkColor: Colorsystem.transparentColor,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () async {
                                await Navigator.of(context)
                                    .pushNamed('/makepayment');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colorsystem.primary,
                                foregroundColor: Colors.white,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              child: Text('Make Payment',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colorsystem.white,
                                  )),
                            ))
                      ],
                    )))));
  }
}
