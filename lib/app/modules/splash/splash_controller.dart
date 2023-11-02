import 'package:get/get.dart';
import 'package:sistem_layanan_kesehatan/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();
    await Future.delayed(const Duration(seconds: 3));
    Get.offNamed(Routes.LOGIN);
  }
}