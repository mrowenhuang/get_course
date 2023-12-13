import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manager_getx_02/get_controller/person_controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  var personData = Get.put(PersonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Text(
            "value ${personData.person1.value.name}",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        personData.ChangeToUppercase();
      }),
    );
  }
}
