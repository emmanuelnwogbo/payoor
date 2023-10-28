import 'package:flutter/material.dart';

import 'package:payoor_mobile/src/components/_header.dart';
import 'package:payoor_mobile/src/components/_categories.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Header(),
      body: Column(
        children: [
          Expanded(
            child: Column(children: [
              Categories()
            ]),
          ),
        ],
      ),
    );
  }
}
