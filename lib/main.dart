import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:reclaimd/API/fireStoreApi.dart';
import 'package:reclaimd/Model/user_Model.dart';
import 'package:reclaimd/Screens/emailverification.dart';
import 'package:reclaimd/Services/AuthServices.dart';
import 'package:reclaimd/Services/FireStoreService.dart';
import 'package:reclaimd/Services/global.dart';
import 'package:reclaimd/Services/localServices.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: AuthPage(),
          builder: EasyLoading.init(),
        );
      },
    );
  }
}

Future<void> onInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  EasyLoading.instance.indicatorType = EasyLoadingIndicatorType.cubeGrid;
  EasyLoading.instance.toastPosition = EasyLoadingToastPosition.top;
  EasyLoading.instance.dismissOnTap = false;
  EasyLoading.instance.displayDuration = const Duration(seconds: 3);
  Get.put(AuthServices());
  Get.put(FirestoreApi());
  Get.put(FirestoreServices());
  Get.put(LocalServices());
  await Get.find<AuthServices>().checkUser();
  if (currentUser.id != '') {
    currentUser =
        (await Get.find<FirestoreServices>().getUser(currentUser.id)) ??
            UserModel();
  }
}
