import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glamuare/ui/widgets/cardBox.dart';

import '../common/app_colors.dart';
import '../common/app_strings.dart';
import '../common/ui_helpers.dart';

class UpcomingAppointment extends StatelessWidget {
  String? date,
      time,
      storeName,
      storeImage,
      userImage,
      serviceName,
      serviceProvider,
      servicePrice;
  bool? inStore;

  UpcomingAppointment(
      {super.key,
      required this.date,
      required this.time,
      this.inStore,
      required this.storeName,
      required this.serviceName,
      this.storeImage,
      this.userImage,
      this.serviceProvider,
      required this.servicePrice});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(smallSize),
          child: CardBox(
            child: Padding(
              padding: const EdgeInsets.all(smallSize),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            date!,
                            style: const TextStyle(
                              color: Color(0xFF595959),
                              fontSize: smallSize,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          horizontalSpaceTiny,
                          Container(
                            width: 2,
                            height: 2,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF595959),
                              shape: OvalBorder(),
                            ),
                          ),
                          horizontalSpaceTiny,
                          Text(
                            time!,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              color: Color(0xFF595959),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          inStore == true
                              ? Container(
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFD9F7BE),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 3),
                                    child: Text(
                                      'In Store',
                                      style: TextStyle(
                                          color: Color(0xFF389E0D),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10),
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink(),
                          horizontalSpaceTiny,
                          SvgPicture.asset(bookingIcon),
                          horizontalSpaceTiny,
                        ],
                      )
                    ],
                  ),
                  verticalSpaceSmall,
                  Container(
                    decoration: ShapeDecoration(
                        color: appointmentBg,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(smallSize))),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: smallSize, vertical: smallSize),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: CircleAvatar(
                                              radius: 20,
                                              foregroundImage: AssetImage(
                                                storeImage != null
                                                    ? storeImage!
                                                    : splashImage,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            right: 8,
                                            bottom: 8,
                                            child: CircleAvatar(
                                              radius: 10,
                                              foregroundImage: AssetImage(
                                                userImage != null
                                                    ? userImage!
                                                    : splashImage,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    horizontalSpaceTiny,
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          storeName!,
                                          style: const TextStyle(
                                            color: Color(0xFF1F1F1F),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            height: 1.83,
                                          ),
                                        ),
                                        Text(
                                          serviceName!,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 10,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          serviceProvider!,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            color: Color(0xFF8B8B8B),
                                            fontSize: 10,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '€' + servicePrice!,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Color(0xFF1F1F1F),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.bold,
                                        height: 1.83,
                                      ),
                                    ),
                                    const Text(
                                      'Paying in store',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 10,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
