import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reclaimd/Widgets/emailButton.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:reclaimd/widgets/buttonWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 12),
            child: Column(
              children: [
                Align(
                  child: Image.asset(
                    "assets/logo/reclaim.png",
                    fit: BoxFit.fill,
                    width: 30.w,
                    height: 13.h,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                textWidget("Sign Up",
                    fontSize: 21.sp, fontWeight: FontWeight.w700),
                textWidget("Create New Account to Start Using the App",
                    color: Color(0xff808B95),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 4.h,
                ),
                emailContainer("Email",
                    color: Color(0xff6CACA0), color1: Color(0xffFFFFFF)),
                SizedBox(
                  height: 4.h,
                ),
                textWidget("Or Sign In With",
                    color: Color(0xff03314B),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                SizedBox(
                  height: 2.h,
                ),
                buttonConatiner("Google",
                    color: Color(0xfffff2f2),
                    color1: Color(0xffE96058),
                    borderColor: Color(0xffffd3d2)),
                SizedBox(
                  height: 2.h,
                ),
                buttonConatiner("Apple",
                    color: Color(0xffe7ecef),
                    color1: Color(0xff00324d),
                    borderColor: Color(0xff88a3af)),
                Spacer(
                  flex: 1,
                ),
                Text.rich(
                  TextSpan(
                    text: "Don’t have an account?",
                    style: GoogleFonts.quicksand(
                      fontSize: 17.sp,
                      color: Color(0xff03314B),
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: ' Sign Up',
                        style: GoogleFonts.quicksand(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6CACA0),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
