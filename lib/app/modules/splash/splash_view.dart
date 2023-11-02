import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sistem_layanan_kesehatan/app/modules/splash/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
          child: Stack(
          children: [
            Positioned(
              top: 250,
              child: Image.asset("assets/image/login.png"),
            ),
            Positioned(
              top: 200,
              child: Image.asset("assets/image/splash_artwork.png"),
            ),
          ],
        ),
      )
    );
  }
}