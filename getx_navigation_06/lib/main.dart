import 'package:flutter/material.dart';
import 'package:getx_navigation_06/page/page_1.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_06/routes/page_route.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const page_1(),
      initialRoute: "/",
      getPages: RoutePage.Page
    );
  }
}
