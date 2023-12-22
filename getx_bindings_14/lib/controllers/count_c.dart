import 'package:get/get.dart';

class CountControllers extends GetxController {
  var counter = 0.obs;

  void increment() {
    counter.value++;
  }
}
