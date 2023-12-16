import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // @ bisa menggunakan default dialog atau dialog
            Get.defaultDialog(
              title: "this is dialog",
              content: Text("this is alert dialog from getx default dialog"),
              textCancel: "cancel",
              textConfirm: "ok",
              onConfirm: () {
                Get.back();
              },
              backgroundColor: Colors.blueGrey,
              barrierDismissible: false,
            );
          },
          child: Text("show dialog"),
        ),
      ),
    );
  }
}
