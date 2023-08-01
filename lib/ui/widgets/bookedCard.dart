import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glamuare/ui/common/app_colors.dart';
import 'package:glamuare/ui/common/app_strings.dart';
import 'package:glamuare/ui/common/ui_helpers.dart';
import 'package:glamuare/ui/widgets/cardBox.dart';
import 'package:glamuare/ui/widgets/headingText.dart';

class BookedCard extends StatelessWidget {
  const BookedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: smallSize, horizontal: 12),
      child: CardBox(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: massiveSize,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill, image: AssetImage(bookedImage)),
                        gradient: LinearGradient(
                          begin: Alignment(-0.00, 1.00),
                          end: Alignment(0, -1),
                          colors: [Colors.black, Colors.black.withOpacity(0)],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    bottom: 30,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.white,
                          width: 4.0,
                        ),
                      ),
                      child: SvgPicture.asset(demoImage),
                    ),
                  )
                ],
              ),
              verticalSpaceSmall,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingText(header: "Mobile Beauty Athlone"),
                      Row(
                        children: [
                          SvgPicture.asset(ratingIcon),
                          horizontalSpaceTiny,
                          Text(
                            "4.8 (80)",
                            style: TextStyle().copyWith(color: ratingTextColor),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: smallSize),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Beauty Therapist and Makeup Artist",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: smallSize),
                        ),
                        verticalSpaceTiny,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              verticalDirection: VerticalDirection.up,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: SvgPicture.asset(locationPin),
                                    ),
                                    horizontalSpaceTiny,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          width: halfScreenWidth(context),
                                          child: Text(
                                            "Unit 2 Shop Street, Athlone, Ireland jhbjbhjbhj jhbjhbjhbjh jbjhbh",
                                            textWidthBasis:
                                                TextWidthBasis.longestLine,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: locationColor),
                                            softWrap: false,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Text(
                                          "10.18 Km away",
                                          textWidthBasis:
                                              TextWidthBasis.longestLine,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: locationColor),
                                          softWrap: false,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: kcPrimaryColor),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: smallSize, horizontal: smallSize),
                                child: Text(
                                  "Book Again",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kcPrimaryColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
