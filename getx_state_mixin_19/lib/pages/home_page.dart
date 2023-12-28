import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_mixin_19/controller/counter_c.dart';

class MyHomePage extends GetView<CounterC> {
  // const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: controller.obx(
          (state) {
            return Text(state!['email']);
          },
          onEmpty: Text("No data"),
          onError: (error) {
            return Text(error.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getData();
        },
      ),
    );
  }
}
