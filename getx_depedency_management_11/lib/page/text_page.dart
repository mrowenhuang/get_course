import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_depedency_management_11/main.dart';

class TextPage extends StatelessWidget {

  var mycont = Get.put(OurController(),permanent: true);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: mycont.textController.value,
          ),
        ),
      ),
    );
  }
}