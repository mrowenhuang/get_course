import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dynamic_url_07/routes/routes_page.dart';

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
      initialRoute: "/",
      getPages: RoutesPage.Page,
    );
  }
}
