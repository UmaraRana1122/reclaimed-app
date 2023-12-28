import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget consultationWidget(
  String text,
  String text2,
  String text3,
  String isImage,
  Color color,
  Color color2,
) {
  return Container(
    height: 11.h,
    width: 100.w,
    decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        border: Border.all(color: Color(0xffF1F1F1)),
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 3.h,
          ),
          Image.asset(
            "assets/images/mask.png",
            height: 6.h,
          ),
          SizedBox(
            width: 3.w,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Text(text,
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Color(0xff03314B),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700))),
                SizedBox(
                  height: .4.h,
                ),
                Text(text2,
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Color(0xff03314B),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400))),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 5.h,
            width: 23.w,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(25)),
            child: Align(
              child: textWidget(text3,
                  fontSize: 14.5.sp,
                  fontWeight: FontWeight.w500,
                  color: color2),
            ),
          )
        ],
      ),
    ),
  );
}
