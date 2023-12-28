import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:reclaimd/Widgets/textWidget2.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget notificationWidget(
  String text,
  String text1,
  String text2,
) {
  return Row(
    children: [
      CircleAvatar(
        radius: 3.9.h,
        backgroundColor: Color(0xfff4fbfb),
        child: Image.asset(
          "assets/icons/info.png",
          height: 3.h,
        ),
      ),
      SizedBox(
        width: 3.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget(text,
              color: Color(0xff03314B),
              fontSize: 17.sp,
              fontWeight: FontWeight.w600),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textWidget2(text1,
                  color: Color(0xff808B95),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
              SizedBox(
                width: 7.w,
              ),
              textWidget(text2,
                  color: Color(0xff03314B),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500)
            ],
          )
        ],
      ),
    ],
  );
}
