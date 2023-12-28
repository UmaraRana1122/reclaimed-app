import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
Widget rowWidget(
  String text,
  String text1,
){
  return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textWidget(text,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff03314B)),
                textWidget(text1,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff03314B)),
              ],
            );
}