import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget blogWidget() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 32.h,
      width: 50.w,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          border: Border.all(color: Color(0xffF1F1F1), width: 1.3),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/blog.png",
                height: 20.h,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Blogs Name",
                color: Color(0xff03314B),
                fontSize: 16.sp,
                fontWeight: FontWeight.w700),
            SizedBox(
              height: 1.h,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/user.png",
                  height: 4.5.h,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget("Author Name",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff03314B)),
                    textWidget("08/08/2023",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff03314B)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
