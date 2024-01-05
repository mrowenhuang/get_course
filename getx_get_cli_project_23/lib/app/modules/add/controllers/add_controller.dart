import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddController extends GetxController {
  //TODO: Implement AddController

  late TextEditingController nameCont;
  late TextEditingController jobCont;
  late TextEditingController emailCont;

  @override
  void onInit() {
    super.onInit();
    nameCont = TextEditingController();
    jobCont = TextEditingController();
    emailCont = TextEditingController();
  }

  @override
  void onClose() {
    nameCont.dispose();
    jobCont.dispose();
    emailCont.dispose();
    super.onClose();
  }
}
