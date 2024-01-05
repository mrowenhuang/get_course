import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_get_cli_project_23/app/modules/home/controllers/home_controller.dart';
import 'package:getx_get_cli_project_23/widgets/text_field_add_widgets.dart';

import '../controllers/add_controller.dart';

class AddView extends GetView<AddController> {
  const AddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeCont = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('AddView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldAddWidgets(
              label: 'Name',
              controller: controller.nameCont,
            ),
            SizedBox(height: 10),
            TextFieldAddWidgets(
              label: 'Job',
              controller: controller.jobCont,
            ),
            SizedBox(height: 10),
            TextFieldAddWidgets(
              label: 'Email',
              controller: controller.emailCont,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                homeCont.addUser(
                  controller.nameCont.text,
                  controller.jobCont.text,
                  controller.emailCont.text,
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  
  }
}
