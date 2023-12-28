import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/notificationWidget.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeNotification extends StatelessWidget {
  const HomeNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 12),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                textWidget("Notifications",
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff03314B)),
                Spacer(),
                textWidget("Settings",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff6CACA0)),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            notificationWidget(
                "Notification Name",
                "Lorem ipsum dolor sit amet lorem \nipsum dolor sit amet",
                "12:00 am"),
            Divider(
              height: 3.h,
              color: Color(0xffF2F2F2),
            ),
            notificationWidget(
                "Notification Name",
                "Lorem ipsum dolor sit amet lorem \nipsum dolor sit amet",
                "12:00 am"),
            Divider(
              height: 3.h,
              color: Color(0xffF2F2F2),
            ),
            notificationWidget(
                "Notification Name",
                "Lorem ipsum dolor sit amet lorem \nipsum dolor sit amet",
                "12:00 am"),
            Divider(
              height: 3.h,
              color: Color(0xffF2F2F2),
            ),
            notificationWidget(
                "Notification Name",
                "Lorem ipsum dolor sit amet lorem \nipsum dolor sit amet",
                "12:00 am"),
            Divider(
              height: 3.h,
              color: Color(0xffF2F2F2),
            ),
            notificationWidget(
                "Notification Name",
                "Lorem ipsum dolor sit amet lorem \nipsum dolor sit amet",
                "12:00 am"),
            Divider(
              height: 3.h,
              color: Color(0xffF2F2F2),
            ),
            notificationWidget(
                "Notification Name",
                "Lorem ipsum dolor sit amet lorem \nipsum dolor sit amet",
                "12:00 am"),
            Divider(
              height: 3.h,
              color: Color(0xffF2F2F2),
            ),
          ],
        ),
      )),
    );
  }
}
