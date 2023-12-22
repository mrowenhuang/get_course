import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bindings_14/controllers/count_c.dart';

class CounterPage extends StatelessWidget {
  // const CounterPage({super.key});

  var count = Get.find<CountControllers>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        count.increment();
      }),
      body: Center(
        child: Obx(
          () => Text(
            count.counter.value.toString(),
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
