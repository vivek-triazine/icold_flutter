import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController userIdTextEditingController;
  late TextEditingController passwordTextEditingController;

  @override
  void onInit() {
    userIdTextEditingController = TextEditingController();
    passwordTextEditingController = TextEditingController();

    super.onInit();
  }

  @override
  void onClose() {
    userIdTextEditingController.dispose();
    passwordTextEditingController.dispose();
    super.onClose();
  }
}
