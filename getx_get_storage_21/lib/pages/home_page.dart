import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_get_storage_21/controllers/auth_c.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  // const MyHomePage({super.key});

  var authCont = Get.find<AuthController>();

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          authCont.logOut();
        },
        child: const Icon(Icons.logout),
      ),
    );
  }
}
