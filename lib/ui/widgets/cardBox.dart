import 'package:flutter/material.dart';

import '../common/ui_helpers.dart';

class CardBox extends StatelessWidget {
  Widget child;
  CardBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(smallSize),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 2,
            offset: Offset(0, 1),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 3,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: child,
    );
  }
}
