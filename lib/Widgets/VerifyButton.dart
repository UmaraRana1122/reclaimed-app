import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget verifyWidget(
  String text,
  String text2,
  String isImage,
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
            isImage,
            height: 7.h,
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
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600))),
                SizedBox(
                  height: .4.h,
                ),
                Text(text2,
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Color(0xff76848B),
                            fontSize: 14.3.sp,
                            fontWeight: FontWeight.w400))),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
