import 'package:flutter/material.dart';

import 'package:payoor_mobile/src/helpers/_colorsys.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String btntxt;

  const SectionHeader({
    Key? key,
    required this.title,
    this.btntxt = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(
                  fontSize: 18.0, // Font size
                  fontWeight: FontWeight.bold,
                  color: Colorsystem.fontblack,
                )),
            TextButton(
              onPressed: () {
                // Define the action to be taken when the button is pressed.
                // For example, navigate to another screen or perform some action.
                print('Button pressed');
              },
              child: Text(btntxt,
                  style: TextStyle(
                    fontSize: 15.0, // Font size
                    fontWeight: FontWeight.w600,
                    color: Colorsystem.primary,
                  )),
            )
          ],
        ),
        const SizedBox(height: 15.0),
      ],
    );
  }
}
