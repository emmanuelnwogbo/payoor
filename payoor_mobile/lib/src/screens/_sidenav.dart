import 'package:flutter/material.dart';

import 'package:payoor_mobile/src/components/_header.dart';

import 'package:payoor_mobile/src/helpers/_variables.dart';

class SideNav extends StatefulWidget {
  const SideNav({super.key});

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Header(title: ''),
       body: Padding(
        padding: mainSidePadding,
        child: SizedBox()
       )
    );
  }
}