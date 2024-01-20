import 'package:flutter/material.dart';

import 'package:payoor_mobile/src/components/_header.dart';
import 'package:payoor_mobile/src/components/_bottomnav.dart';

import 'package:payoor_mobile/src/screens/_home.dart';
import 'package:payoor_mobile/src/screens/_cart.dart';
import 'package:payoor_mobile/src/screens/_checkout.dart';
import 'package:payoor_mobile/src/screens/_search.dart';
import 'package:payoor_mobile/src/screens/_sidenav.dart';
import 'package:payoor_mobile/src/screens/_makepayment.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Payoor',
    theme: ThemeData(
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: const MyApp(),
    routes: {
      '/home': (BuildContext context) => const MyApp(),
      '/cart': (BuildContext context) => const Cart(),
      '/checkout': (BuildContext context) => const Checkout(),
      '/search': (BuildContext context) => YourPage(),
      '/sidenav': (BuildContext context) => const SideNav(),
      '/makepayment': (BuildContext context) => const MakePayment(),
    }
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Header(title: 'Home'),
      backgroundColor: Colors.white,
      body: Home(),
      bottomNavigationBar: BottomNav(),
    );
  }
}
