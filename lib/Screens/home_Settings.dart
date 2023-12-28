import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/settingWidget.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeSetting extends StatelessWidget {
  const HomeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textWidget("Settings",
                  color: Color(0xff03314B),
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700),
              Row(
                children: [
                  CircleAvatar(
                      radius: 7.2.h,
                      backgroundColor: Color(0xff6CACA0),
                      child: CircleAvatar(
                        radius: 7.h,
                        backgroundColor: Color(0xffFFFFFF),
                        child: CircleAvatar(
                          radius: 6.h,
                          child: Column(
                            children: [Image.asset("assets/images/jane.png")],
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 4.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textWidget("Jane Doe",
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff03314B)),
                      SizedBox(
                        height: .4.h,
                      ),
                      textWidget("janedow@email.com",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff808B95)),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        height: 5.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            color: Color(0xff6CACA0),
                            borderRadius: BorderRadius.circular(22)),
                        child: Align(
                          child: textWidget("Edit profile",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFFFFF)),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              settingWidget(
                "assets/logo/recommend.png",
                "My Recommendations",
                "assets/icons/right.png",
              ),
              settingWidget(
                "assets/logo/payment.png",
                "My Payments",
                "assets/icons/right.png",
              ),
              settingWidget(
                "assets/logo/consult.png",
                "My Consultations",
                "assets/icons/right.png",
              ),
              settingWidget(
                "assets/logo/card.png",
                "My Cannibas Card",
                "assets/icons/right.png",
              ),
              settingWidget(
                "assets/logo/quiz.png",
                "Quizzes",
                "assets/icons/right.png",
              ),
              settingWidget(
                "assets/logo/service.png",
                "Terms & Services",
                "assets/icons/right.png",
              ),
              settingWidget(
                "assets/logo/privacy.png",
                "Privacy Policy",
                "assets/icons/right.png",
              ),
              settingWidget(
                "assets/logo/contact.png",
                "Contacts Us",
                "assets/icons/right.png",
              ),
              SizedBox(
                height: 5.h,
              ),
              Align(
                  child: textWidget("Logout",
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff03314B)))
            ],
          ),
        ),
      ),
    );
  }
}
