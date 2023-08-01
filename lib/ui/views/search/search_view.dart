import 'package:flutter/material.dart';
import 'package:glamuare/ui/common/app_colors.dart';
import 'package:glamuare/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'search_viewmodel.dart';

class SearchView extends StackedView<SearchViewModel> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      //backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ChoiceChip(
                  elevation: tinySize,
                  label: Text("Categories ",
                      style: TextStyle().copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  labelPadding: EdgeInsets.all(tinySize),
                  side: const BorderSide(color: offWhiteColor),
                  selected: false,
                  disabledColor: Colors.white,
                );
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  SearchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchViewModel();
}
