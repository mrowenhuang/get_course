import 'package:flutter/material.dart';
import 'package:state_manager_getx_02/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
      
    );
  }
}

// @ terdapat 3 genis state management dan 2 tipe
  // ^ reactive 
    //@ GetX<MyController>(
    //@   init: MyController(),
    //@   builder: (_) => Text(_.var),
    //@ )
    // ! dan
    //@ Obx(() => widget)
  // ^ simple
    //@ getBuilder