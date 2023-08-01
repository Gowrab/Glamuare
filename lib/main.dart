import 'package:flutter/material.dart';
import 'package:glamuare/app/app.bottomsheets.dart';
import 'package:glamuare/app/app.dialogs.dart';
import 'package:glamuare/app/app.locator.dart';
import 'package:glamuare/app/app.router.dart';
import 'package:glamuare/ui/common/app_colors.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: kcPrimaryColor,
        focusColor: kcPrimaryColor,
        colorScheme:
            ThemeData().colorScheme.copyWith(secondary: kcPrimaryColor),
        primaryColorLight: kcPrimaryColor,
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.black, fontFamily: 'Inter'),
      ),
      initialRoute: Routes.homeView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
