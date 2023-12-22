import 'package:get/get.dart';

class languageController extends GetxController {
  var isLanguage = false.obs;

  void updateLanguage () {
    isLanguage.value = !isLanguage.value;
  }
}