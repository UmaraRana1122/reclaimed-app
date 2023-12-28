import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
Widget licenseWidget(){
  return Container(
                  height: 24.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Color(0xfffafafa),
                    border: Border.all(
                      color: Color(0xffF5F5F5),
                      width: .6.w,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.5.h),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/icons/image.png",
                          height: 4.5.h,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Image.asset(
                          "assets/icons/upload.png",
                          height: 2.5.h,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        textWidget("We accepted jpg,png,jpeg.",
                            color: Color(0xff808B95),
                            fontSize: 14.5.sp,
                            fontWeight: FontWeight.w500),
                        Spacer(
                          flex: 1,
                        )
                      ],
                    ),
                  ),
                );
}