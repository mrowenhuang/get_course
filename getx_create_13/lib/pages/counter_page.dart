// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_create_13/controllers/getController.dart';
import 'package:getx_create_13/widgets/conter_size.dart';

class CounterPage extends StatelessWidget {
  var myCount2 = Get.find<MyController>(tag: "hasil");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Obx(
          () => Text(
            myCount2.hasil.toString(),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return counterSize();
        },
      ),
    );
  }
}
