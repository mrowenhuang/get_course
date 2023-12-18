import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_depedency_management_11/page/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  var myMCont = Get.lazyPut(() => OurController(),fenix: true,tag: "counter-tag");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => CounterPage());
          },
          child: Text("Next Page"),
        ),
      ),
    );
  }
}



class OurController extends GetxController {
  var counter = 0.obs;
  var textController = TextEditingController().obs;
}
