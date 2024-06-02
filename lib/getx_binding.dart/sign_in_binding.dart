import 'package:get/get.dart';
import 'package:medical_u/controller/signin_controller.dart';


class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SignInController>(SignInController());
  }
}