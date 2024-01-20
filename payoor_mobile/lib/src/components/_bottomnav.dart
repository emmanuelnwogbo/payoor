import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:payoor_mobile/src/models/_cart.dart';

import 'package:payoor_mobile/src/helpers/_colorsys.dart';

const home = 'assets/home.svg';
const cart = 'assets/shoppingbag.svg';
const orders = 'assets/shoppingbag.svg';
const search = 'assets/search.svg';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  void _onItemTapped(int index) async {
    setState(() {
      _currentIndex = index;
    });

    if (index == 0) {
      await Navigator.of(context).pushNamed('/home');
    }

    if (index == 1) {
      await Navigator.of(context).pushNamed('/cart');
    }

    if (index == 2) {
      await Navigator.of(context).pushNamed('/checkout');
    }

    if (index == 3) {
      await Navigator.of(context).pushNamed('/search');
    }
  }

  UserCart userCart = UserCart();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<CartModel>>(
  valueListenable: userCart, // assuming userCart is an instance of UserCart
  builder: (context, cartModelItems, child) {
    return BottomNavigationBar(
      backgroundColor: Colorsystem.bordergrey,
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      selectedItemColor: Colorsystem.primary,
      unselectedItemColor: Colorsystem.btmnavicongrey,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              SvgPicture.asset(cart),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: cartModelItems.isNotEmpty ? Colors.red : Colors.transparent,
                  ),
                  child: Text(
                    '${cartModelItems.length}', // Use the length of cartModelItems
                    style: TextStyle(
                      color: cartModelItems.isNotEmpty ? Colors.white : Colors.transparent,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(orders),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(search),
          label: 'Search',
        ),
      ],
    );
  },
);
;
  }
}
