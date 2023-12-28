import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/ontap.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget buttonConatiner(String text,
    {Function? ontap,
    Color? color,
    Color? color1,
    Color? borderColor,
    double? borderWidth}) {
  return onPress(
    onTap: ontap,
    child: Container(
      height: 6.h,
      width: 90.w,
      decoration: BoxDecoration(
        color: color ?? Colors.black,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: borderWidth ?? 0.0,
        ),
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
