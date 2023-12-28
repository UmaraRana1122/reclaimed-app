import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
Widget tabsWidget(
  String isImage,
  String text
){
  return  Column(
                                children: [
                                  Image.asset(
                                   isImage,
                                    height: 7.h,
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  textWidget(text,
                                      color: Color(0xff6CACA0),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700),
                                ],
                              );
}