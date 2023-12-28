import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/switchWidget.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  bool isUserAuthorized = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/icons/left.png",
                    height: 2.h,
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  textWidget("Notification Settings",
                      color: Color(0xff03314B),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w700)
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              switchWidget(isUserAuthorized, "Email Notification"),
              switchWidget(isUserAuthorized, "SMS Notification"),
              switchWidget(isUserAuthorized, "Push Notification"),
              switchWidget(isUserAuthorized, "Livestream"),
            ],
          ),
        ),
      ),
    );
  }
}
