import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget switchWidget(
  bool isUserAuthorized,
  String text,
) {
  return StatefulBuilder(
    builder: (BuildContext context, setState) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textWidget(text,
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff03314B)),
            FlutterSwitch(
              height: 29,
              width: 58.0,
              toggleSize: 35.0,
              value: isUserAuthorized,
              borderRadius: 20.0,
              padding: 2,
              activeToggleColor: Colors.transparent,
              inactiveToggleColor: Colors.transparent,
              activeSwitchBorder: Border.all(
                color: Colors.transparent,
                width: 0.0,
              ),
              inactiveSwitchBorder: Border.all(
                color: Color(0xFF6CACA0),
                width: 1.0,
              ),
              activeColor: Color(0xFF6CACA0),
              inactiveColor: Color(0xFF6CACA0),
              activeIcon: CircleAvatar(
                backgroundColor: Colors.white,
              ),
              inactiveIcon: CircleAvatar(
                backgroundColor: Colors.white,
              ),
              onToggle: (val) {
                setState(() {
                  isUserAuthorized = val;
                });
              },
            )
          ],
        ),
      );
    },
  );
}
