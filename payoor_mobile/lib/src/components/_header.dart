import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:payoor_mobile/src/helpers/_colorsys.dart';
import 'package:payoor_mobile/src/helpers/_variables.dart';

const burger = 'assets/burger.svg';

class Header extends StatefulWidget implements PreferredSizeWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Size get preferredSize =>
      const Size.fromHeight(100); // Preferred height of 100 pixels

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool isSideNavOpen = false;

  void toggleSideNav() {
    setState(() {
      isSideNavOpen = !isSideNavOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height *
            0.15, // Adjust the percentage as needed
        width: MediaQuery.of(context)
            .size
            .width, // Adjust the percentage as needed
        decoration: BoxDecoration(
          color: Colorsystem.white,
          boxShadow: const [
            BoxShadow(
              color:
                  Color.fromRGBO(0, 0, 0, 0.1), // RGBA color with 10% opacity
              offset: Offset(0, 8), // Vertical offset
              blurRadius: 20, // Blur radius
            ),
          ],
        ),
        child: Stack(children: [
          Positioned(
            bottom: MediaQuery.of(context)
            .size
            .height * 0.03,
            right: 0,
            left: 0,
              child: Padding(
            padding: mainSidePadding,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                      //color: Colors.red,
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset(burger))
                ]),
          ))
        ]));
  }
}
