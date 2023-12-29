import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_get_storage_21/controllers/auth_c.dart';
import 'package:getx_get_storage_21/controllers/text_c.dart';
import 'package:getx_get_storage_21/pages/home_page.dart';
import 'package:getx_get_storage_21/pages/login_page.dart';
import 'package:getx_get_storage_21/routes/routes_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var authCont = Get.put(AuthController());
  var textCont = Get.put(TextController());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: authCont.autoLogin(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Obx(
            () => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              home: authCont.isAuth.value ? MyHomePage() : LoginPage(),
              getPages: RoutesPages.routesPage,
            ),
          );
        } else {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                child: SingleChildScrollView(),
              ),
            ),
          );
        }
      },
    );
  }
}
