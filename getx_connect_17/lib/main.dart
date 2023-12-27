import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_connect_17/routes/routes_name.dart';
import 'package:getx_connect_17/routes/routes_pages.dart';

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
      theme: ThemeData.light(),
      initialRoute: RoutesName.homePage,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: Duration(seconds: 1),
      getPages: RoutesPages.routesPages,
    );
  }
}
