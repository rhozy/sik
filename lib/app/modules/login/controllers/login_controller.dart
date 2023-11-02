import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sistem_layanan_kesehatan/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final usernameText = TextEditingController();
  final passwordText = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void onTapLogin() {
    if (formKey.currentState!.validate()) {
      Get.toNamed(Routes.HOME);
    }
  }
}
