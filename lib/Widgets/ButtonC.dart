import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget buttonWidget() {
  return Container(
    height: 7.h,
    width: 90.w,
    decoration: BoxDecoration(
      color: Color(0xff6CACA0),
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
    child: Align(
      child: textWidget("Next",
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          color: Color(0xffFFFFFF)),
    ),
  );
}
