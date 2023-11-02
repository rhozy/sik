import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sistem_layanan_kesehatan/app/widgets/custom_text.dart';
import 'package:sistem_layanan_kesehatan/app/widgets/custom_textfield.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _renderBody()
    );
  }

  Padding _renderBody() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
        bottom: 30,
        left: 30,
        right: 30,
      ),
      child: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset("assets/image/login.png"),
            ),
            _renderLandingText(),
            const SizedBox(height: 30),
            CustomTextfield(label: "Username", controller: controller.usernameText),
            const SizedBox(height: 15),
            CustomTextfield(label: "Password", controller: controller.passwordText, isPassword: true),
            const SizedBox(height: 30),
            _renderButton("Masuk", controller.onTapLogin),
            const SizedBox(height: 15),
            _renderButton("Daftar", (){}),
            const SizedBox(height: 15),
            _renderTextButton(),
          ],
        ),
      ),
    );
  }

  Center _renderTextButton() {
    return Center(
          child: InkWell(
            onTap: (){},
            child: const CustomText(
              text: "Lupa Password",
              fontColor: Colors.cyan,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
  }

  Column _renderLandingText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomText(
          text: "Hallo!",
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 12),
        CustomText(
          text: "Selamat datang di aplikasi resmi",
          fontSize: 16,
        ),
        SizedBox(height: 5),
        CustomText(
          text: "Sistem Informasi Publik Layanan Kesehatan",
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }

  Widget _renderButton(String text, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.cyan.shade600, Colors.cyan.shade300]),
                borderRadius: BorderRadius.circular(20)
              ),
              child: CustomText(text: text, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
