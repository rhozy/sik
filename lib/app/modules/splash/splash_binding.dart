import 'package:get/get.dart';
import 'package:sistem_layanan_kesehatan/app/modules/splash/splash_controller.dart';

class SplashBinding implements Bindings {
@override
void dependencies() {
    Get.put(SplashController());
  }
}