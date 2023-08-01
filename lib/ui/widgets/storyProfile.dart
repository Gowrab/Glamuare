import 'package:flutter/material.dart';

import '../common/app_colors.dart';
import '../common/app_strings.dart';
import '../common/ui_helpers.dart';

class StoryProfile extends StatelessWidget {

  const StoryProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(tinySize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 44,
            backgroundColor: kcPrimaryColor,
            child: CircleAvatar(
              radius: 42,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(storyProfile),
              ),
            ),
          ),
          verticalSpaceTiny,
          Text("Portia "
              "\nNails",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: communityHeaderColor,
              fontSize: smallSize,

            ),)
        ],
      ),
    );
  }
}
