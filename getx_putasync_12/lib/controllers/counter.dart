import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyCounter extends GetxController {
  var counter = 0.obs;

  Future<void> SetData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 12);

    counter.value = prefs.getInt('counter')!.toInt();
  }
}
