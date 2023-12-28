import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/ConsultationWidget.dart';
import 'package:reclaimd/Widgets/blogsWidget.dart';
import 'package:reclaimd/Widgets/recommendationWidget.dart';
import 'package:reclaimd/Widgets/recommendedWidget.dart';
import 'package:reclaimd/Widgets/rowWidget.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:reclaimd/Widgets/textWidget2.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/jane.png",
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  textWidget("Jane Doe",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff03314B)),
                  Spacer(),
                  textWidget("Request New Card",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6CACA0)),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                height: 30.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Color(0xfff5fbfa),
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/logo/leave.png",
                                height: 3.h,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              textWidget("Patient Name",
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff03314B)),
                            ],
                          ),
                          Spacer(),
                          CircleAvatar(
                              radius: 3.9.h,
                              backgroundColor: Color(0xffE96058),
                              child: CircleAvatar(
                                radius: 3.7.h,
                                backgroundColor: Color(0xffFFFFFF),
                                child: CircleAvatar(
                                  radius: 3.h,
                                  child: Column(
                                    children: [
                                      Image.asset("assets/images/jane.png")
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                      textWidget("Jane Doe",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff03314B)),
                      textWidget2(
                          "In medical marijuana patient of Green Harvest Health, 1505 Stonecreek Dr. South Suite 104 Pickerington,Canada",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff808B95)),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          textWidget("Medical Cannabis ID Card",
                              fontSize: 15.5.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff03314B)),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              textWidget("Expiration Date",
                                  fontSize: 15.5.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff03314B)),
                              textWidget("08/08/2030",
                                  fontSize: 15.5.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff03314B)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              rowWidget("Last Consultation", "View more"),
              SizedBox(
                height: 1.h,
              ),
              consultationWidget(
                  "Consultation Name",
                  "08 - 08 - 2023",
                  "Finished",
                  "assets/images/mask.png",
                  Color(0xfff5fbfa),
                  Color(0xff6CACA0)),
              SizedBox(
                height: 1.h,
              ),
              consultationWidget(
                  "Consultation Name",
                  "08 - 08 - 2023",
                  "Cancelled",
                  "assets/images/mask.png",
                  Color(0xfffff7f7),
                  Color(0xffE96058)),
              SizedBox(
                height: 1.h,
              ),
              rowWidget("Recommendations", "View more"),
              SizedBox(
                height: 1.h,
              ),
              recommendationWidget(
                  "Presctiptions Name",
                  "08 - 08 - 2023",
                  "5 Items",
                  "Paid",
                  "assets/images/med.png",
                  Color(0xfff5fbfa),
                  Color(0xff6CACA0)),
              SizedBox(
                height: 1.h,
              ),
              rowWidget("Recommended Products", "View more"),
              SizedBox(
                height: 1.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    recommendedWidget(),
                    recommendedWidget(),
                    recommendedWidget(),
                    recommendedWidget(),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              rowWidget("Blogs", "View more"),
              SizedBox(
                height: 1.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    blogWidget(),
                    blogWidget(),
                    blogWidget(),
                    blogWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
