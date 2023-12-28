import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/VerifyButton.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VerifyOption extends StatelessWidget {
  const VerifyOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/icons/left.png",
                    height: 2.h,
                  )),
              textWidget("Select Your Verify",
                  color: Color(0xff03314B),
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w700),
              SizedBox(
                height: 1.h,
              ),
              textWidget("Select the verify option as you want below:",
                  color: Color(0xff808B95),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: 6.h,
              ),
              verifyWidget(
                  "Mobile Number",
                  "Please use your number by your country",
                  "assets/icons/call.png"),
              SizedBox(
                height: 2.5.h,
              ),
              verifyWidget("Email", "Please your email address",
                  "assets/icons/message.png")
            ],
          ),
        ),
      ),
    );
  }
}
