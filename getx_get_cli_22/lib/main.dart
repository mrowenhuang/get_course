import 'package:flutter/material.dart';

import 'package:get/get.dart';


import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}


// @ pada bagian ini kita melakukan perkenalan dengan menggunakan get_cli di mana get_cli merupakan sebuah fitur yang bisa di gunakan untuk membuat folder menjadi bentuk get dengan rapi 

// ^ untuk sintaks yang di gunakan https://pub.dev/packages/get_cli