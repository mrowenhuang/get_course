import 'package:get/get.dart';

class GetCounter extends GetxController {
  var counter = 0.obs;
  var themeActive = false.obs;

  void changeTheme() {
    themeActive.value = !themeActive.value;
  }

  void Increment() {
    counter + 1;
  }

  void Decrement() {
    counter - 1;
  }
}
