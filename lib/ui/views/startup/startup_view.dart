import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glamuare/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import 'package:glamuare/ui/common/ui_helpers.dart';

import '../../common/app_strings.dart';
import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        width: screenWidth(context),
        height: screenHeight(context),
        decoration: const BoxDecoration(
          //#FF5F6B, #FB2B7E
          gradient: LinearGradient(
            begin: Alignment(-0.21, -0.98),
            end: Alignment(0.21, 0.98),
            colors: [color1, color2],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: SvgPicture.asset(
                watermark1,
              ),
            ),
            GestureDetector(
              onTap: () {
                viewModel.runStartupLogic();
              },
              child: Center(
                child: SvgPicture.asset(
                  splashImage,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SvgPicture.asset(
                watermark2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  /* @override
  void onViewModelReady(StartupViewModel viewModel) => viewModel.runStartupLogic();*/
}
