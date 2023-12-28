import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_mixin_19/bindings/counter_b.dart';
import 'package:getx_state_mixin_19/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // var mainCounterCont = Get.put(CounterC());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      initialBinding: CounterBinding(),
    );
  }
}
