import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget settingWidget(
  String isImage,
  String text,
  String isImage1,
) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        Image.asset(
          isImage,
          height: 2.5.h,
        ),
        SizedBox(
          width: 3.w,
        ),
        textWidget(text,
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff03314B)),
        Spacer(),
        Image.asset(
          isImage1,
          height: 1.5.h,
        ),
      ],
    ),
  );
}
