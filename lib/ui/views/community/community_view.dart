import 'package:flutter/material.dart';
import 'package:glamuare/ui/common/app_colors.dart';
import 'package:glamuare/ui/common/ui_helpers.dart';
import 'package:glamuare/ui/widgets/headingText.dart';
import 'package:glamuare/ui/widgets/storyProfile.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_strings.dart';
import 'community_viewmodel.dart';

class CommunityView extends StackedView<CommunityViewModel> {
  const CommunityView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CommunityViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          elevation: 0,
          title: Text(
            "My Communities",
            textAlign: TextAlign.center,
            style: TextStyle().copyWith(
                color: communityHeaderColor,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return  StoryProfile();
                    },
                  ),
                ),
                Row(
                  children: [

                  ],
                ),
                //Post design

              ],
            ),
          ),
        ));
  }

  @override
  CommunityViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CommunityViewModel();
}
