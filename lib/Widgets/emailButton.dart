import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget emailContainer(String text,
    {Function? onTap,
    Color? color,
    Color? color1,
    Color? borderColor,
    double? borderWidth}) {
  return GestureDetector(
    onTap: onTap as void Function()?,
    child: Container(
      height: 6.5.h,
      width: 90.w,
      decoration: BoxDecoration(
        color: color ?? Colors.black,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: borderWidth ?? 0.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffdbf1e2).withOpacity(0.9),
            spreadRadius: 14,
            blurRadius: 17,
            offset: Offset(-1, 7),
          ),
        ],
      ),
      child: Align(
        child: textWidget(
          text,
          color: color1 ?? Colors.black,
          fontSize: 17.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
