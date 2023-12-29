import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TextController extends GetxController {
  var showPass = true.obs;
  var rememberMe = false.obs;

  late TextEditingController emailC;
  late TextEditingController passwordC;

  @override
  void onInit() {
    // TODO: implement onInit
    passwordC = TextEditingController();
    emailC = TextEditingController();
    final box = GetStorage();
    if (box.read("rememberme") != null) {
      final data = box.read("rememberme") as Map<String, dynamic>;
      rememberMe.value = data['remember'];
      passwordC.text = data['password'];
      emailC.text = data['email'];
    }
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    passwordC.dispose();
    emailC.dispose();
    super.onClose();
  }
}
