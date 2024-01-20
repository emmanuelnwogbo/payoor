import 'package:flutter/material.dart';

import 'package:payoor_mobile/src/components/_categories.dart';
import 'package:payoor_mobile/src/components/_bestsellers.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(children: [Categories(), BestSellers()]));
  }
}
