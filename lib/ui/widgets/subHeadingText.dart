import 'package:flutter/material.dart';

import '../common/app_colors.dart';
import '../common/ui_helpers.dart';

class SubHeadingText extends StatelessWidget {
  String? subHeader;
  SubHeadingText({super.key, required this.subHeader});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: smallSize),
      child: Text(
        subHeader!,
        style: TextStyle().copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            height: 1.57,
            color: textHeadColor),
      ),
    );
  }
}
