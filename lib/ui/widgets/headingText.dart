import 'package:flutter/material.dart';

import '../common/app_colors.dart';
import '../common/ui_helpers.dart';

class HeadingText extends StatelessWidget {
  String? header;
  double? fontSize = 14;
  bool? viewAll;
  HeadingText({super.key, required this.header, this.viewAll, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: smallSize),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            header!,
            style: TextStyle().copyWith(
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
                height: 1.57,
                color: textHeadColor),
          ),
          viewAll == true
              ? Text(
                  "View All",
                  style: const TextStyle().copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      height: 1.57,
                      color: textHeadColor),
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}
