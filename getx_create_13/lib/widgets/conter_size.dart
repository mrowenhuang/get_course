// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_create_13/controllers/getController.dart';

class counterSize extends StatelessWidget {
  var myCount2 = Get.find<MyController>();
  var myCount = Get.find<MyController>(tag: "hasil");

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              myCount2.nilai.value--;
              myCount.hasil.value--;
            },
            icon: Icon(Icons.remove),
          ),
          Obx(
            () => Text(myCount2.nilai.value.toString()),
          ),
          IconButton(
            onPressed: () {
              myCount.hasil.value++;
              myCount2.nilai.value++;
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
