import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatelessWidget {
  // const MyHomePage({super.key});

  var count = 0.obs;
  // var myCount = Get.put(MyCounter());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Text("value : ${count}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          // @ putAsync merupakan cara mengambil data pada storage local dalam perangkat

          Get.putAsync<SharedPreferences>(() async {
            final prefs = await SharedPreferences.getInstance();
            await prefs.setInt('counter', 12345);

            count.value = prefs.getInt("counter")!.toInt();

            return prefs;
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
