import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EmailVerifiedScreen extends StatelessWidget {
  const EmailVerifiedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Column(
              children: [
                Align(
                  child: Image.asset(
                    "assets/logo/verified.png",
                    width: 56.w,
                    height: 25.h,
                  ),
                ),
                textWidget("Succesfully Verified!",
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff03314B)),
                textWidget(
                    "Your account is set now, we will redirect you to profile information",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff808B95)),
              ],
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
