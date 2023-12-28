import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:reclaimd/Model/user_Model.dart';
import 'package:reclaimd/Services/AuthServices.dart';
import 'package:reclaimd/Services/FireStoreService.dart';
import 'package:reclaimd/Services/global.dart';

class Auth2Controller extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  TextEditingController username = TextEditingController();
  bool termCondition = false;
  bool obscureTextPassword = true;

  suggestName() async {
    if (currentUser.userName == "") {
      username.text =
          (currentUser.email.split('@')[0]).replaceAll(RegExp(r"\d"), "");
      bool check =
          await Get.find<FirestoreServices>().checkUserNameExit(username.text);

      if (check) {
        bool check = await Get.find<FirestoreServices>()
            .checkUserNameExit(username.text);
        if (check) {
          suggestName();
        }
      }
      currentUser.userName = username.text;
    } else {
      username.text =
          (currentUser.email.split('@')[0]).replaceAll(RegExp(r"\d"), "");
      bool check =
          await Get.find<FirestoreServices>().checkUserNameExit(username.text);
      if (check) {
        suggestName();
      }
      currentUser.userName = username.text;
    }
    update();
  }

  updateUser() async {
    await Get.find<FirestoreServices>().updateUser(currentUser);
  }

  changeEmail() async {
    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return;
    }

    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return;
    }

    String message = await Get.find<AuthServices>().changeEmail(email.text);
    if (message == "") {
      currentUser.email = email.text;
      await Get.find<FirestoreServices>().registerUser();

      Get.back();
    } else {
      EasyLoading.showInfo(message);
    }
  }

  loginUser() async {
    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return;
    }

    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return;
    }
    if (password.text.isEmpty) {
      EasyLoading.showInfo('Enter Password');
      return;
    }

    EasyLoading.show();
    String str =
        await Get.find<AuthServices>().emailSignIn(email.text, password.text);
    if (str == "") {
      currentUser =
          await Get.put(FirestoreServices()).getUser(currentUser.id) ??
              UserModel();
      await Get.find<FirestoreServices>().updateUser(currentUser);
      EasyLoading.dismiss();
      if (FirebaseAuth.instance.currentUser!.emailVerified) {
        print('login');
      } else {
        print('verify');
      }
    } else {
      EasyLoading.showError(str);
    }
  }

  forgetPassword() async {
    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return;
    }

    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return;
    }
    EasyLoading.show();
    String str = await Get.find<AuthServices>().forgetPassword(email.text);

    if (str == "") {
      EasyLoading.dismiss();
      EasyLoading.showInfo('Check your email\nfor reset password');

      Get.back();
    } else {
      EasyLoading.showError(str);
    }
  }

  Future<void> registerUser() async {
    EasyLoading.show();

    try {
      _validateEmail();

      _validatePassword();

      _confirmPassword();

      currentUser.email = email.text;
      currentUser.initialPassword = password.text;
      currentUser.createDate = DateTime.now();

      String str = await Get.find<AuthServices>().emailSignUp();

      if (str.isEmpty) {
        await Get.find<FirestoreServices>().registerUser();

        EasyLoading.dismiss();

        await Get.find<AuthServices>().sendEmailVarification();
      } else {
        EasyLoading.showError(str);
      }
    } catch (e) {
      print('User registration completed with an error: $e');
      EasyLoading.showError('Registration failed');
    } finally {
      EasyLoading.dismiss();
    }
  }

  void _validateEmail() {
    if (email.text.isEmpty) {
      throw 'Enter Email Address';
    }

    if (!email.text.isEmail) {
      throw 'Enter Valid Email';
    }
  }

  void _validatePassword() {
    if (password.text.isEmpty) {
      throw 'Enter Password';
    }

    if (password.text.length < 6) {
      throw 'Your password is weak';
    }
  }

  void _confirmPassword() {
    if (password.text != cPassword.text) {
      throw 'Password doesn\'t match';
    }
  }
  static Future<User?> signUp(
      {required String userEmail,
      required String password,
      required BuildContext context}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: userEmail, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('The password provided is too weak.')));
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('The account already exists for that email.')));
      }
      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  gmailLogin() async {
    EasyLoading.show();

    bool value = await Get.find<AuthServices>().googleLogin();

    if (value) {
      EasyLoading.dismiss();

      UserModel? user =
          await Get.find<FirestoreServices>().getUser(currentUser.id);

      if (user == null) {
        currentUser.userType = 0;

        await Get.find<FirestoreServices>().registerUser();
      } else {
        currentUser = user;

        await Get.find<FirestoreServices>().updateUser(currentUser);
      }
    } else {
      currentUser = UserModel();

      EasyLoading.showInfo('Error in Login');
    }
  }
}
