import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glamuare/ui/common/app_strings.dart';
import 'package:glamuare/ui/widgets/bookedCard.dart';
import 'package:glamuare/ui/widgets/headingText.dart';
import 'package:glamuare/ui/widgets/subHeadingText.dart';
import 'package:glamuare/ui/widgets/upcomingAppointment.dart';
import 'package:stacked/stacked.dart';
import 'package:glamuare/ui/common/ui_helpers.dart';
import '../../widgets/storyProfile.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Container(
          width: screenWidth(context),
          height: screenHeight(context),
          decoration: const BoxDecoration(
            //#FF5F6B, #FB2B7E
           
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              verticalSpaceMedium,
              HeadingText(
                header: "Upcoming Appointments",
                viewAll: true,
                fontSize: 16,
              ),
              verticalSpaceMedium,
              SizedBox(
                width: screenWidth(context),
                height: 150,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return UpcomingAppointment(
                      date: 'Fri, 24 Sep 2022',
                      time: '11:00 - 11:45 AM',
                      storeName: 'True Beauty Nenagh',
                      serviceName: 'Gel Nails',
                      serviceProvider: 'by Laura',
                      storeImage: demoImage,
                      userImage: demoProfileImage,
                      servicePrice: '30.00',
                      inStore: true,
                    );
                  },
                ),
              ),
              verticalSpaceSmall,
              Divider(
                thickness: smallSize,
                color: Color(0xFFF5F5F5),
              ),
              verticalSpaceMedium,
              HeadingText(
                header: "Recently Booked",
                viewAll: true,
                fontSize: 16,
              ),
              verticalSpaceTiny,
              SubHeadingText(subHeader: "Reorder what you book last time"),
              verticalSpaceMedium,
              SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return BookedCard();
                  },
                ),
              ),
              verticalSpaceMedium,
              Divider(
                thickness: smallSize,
                color: Color(0xFFF5F5F5),
              ),
              verticalSpaceMedium,
              HeadingText(
                header: "My Communities",
                viewAll: false,
                fontSize: 16,
              ),
              verticalSpaceSmall,
              SizedBox(
                height: 130,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return  StoryProfile();
                  },
                ),
              )
            ],
          ),
        ),
      ),

    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return HomeView();
      default:
        return HomeView();
    }
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
