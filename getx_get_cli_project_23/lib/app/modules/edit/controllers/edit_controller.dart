import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditController extends GetxController {
  //TODO: Implement EditController
  late TextEditingController nameCont;
  late TextEditingController jobCont;
  late TextEditingController emailCont;

  @override
  void onInit() {
    nameCont = TextEditingController();
    jobCont = TextEditingController();
    emailCont = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    nameCont.dispose();
    jobCont.dispose();
    emailCont.dispose();
    super.onClose();
  }
}
