import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reclaimd/Controller/splashController.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/splashWidget.dart';

class BoardingScreen1 extends StatelessWidget {
  const BoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (ProfileController _) => Scaffold(
              body: SafeArea(
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 22),
                    child: Column(
                      children: [
                        textWidget("skip",
                            color: Color(0xff808B95),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400),
                        Spacer(),
                        SizedBox(
                          width: 75.w,
                          height: 40.h,
                          child: PageView.builder(
                            controller: _.controller,
                            itemCount: _.numberOfPages,
                            itemBuilder: (BuildContext context, int index) {
                              return eachPage(_.images[index]);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        textWidget("Doctor Consultation",
                            color: Color(0xff03314B),
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w700),
                        textWidget(
                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna ",
                            color: Color(0xff808B95),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                        SizedBox(
                          height: 3.h,
                        ),
                        SmoothPageIndicator(
                          controller: _.controller,
                          count: 3,
                          effect: WormEffect(
                            dotColor: Color(0xffD9D9D9),
                            activeDotColor: Color(0xff3E9892),
                            radius: .6.h,
                            strokeWidth: 20.w,
                            spacing: 15,
                            dotHeight: 1.1.h,
                            dotWidth: 1.1.h,
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/icons/arrow.png",
                              height: 2.h,
                            ),
                            Container(
                              height: 5.h,
                              width: 5.h,
                              decoration: BoxDecoration(
                                color: Color(0xff6CACA0),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff6CACA0).withOpacity(0.4),
                                    spreadRadius: 0,
                                    blurRadius: 12,
                                    offset: Offset(-1, 7),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Image.asset(
                                  "assets/icons/back.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
