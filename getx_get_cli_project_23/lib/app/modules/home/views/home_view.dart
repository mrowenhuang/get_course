import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_get_cli_project_23/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.ADD);
            },
            icon: Icon(Icons.add),
          ),
        ],
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.user.length,
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) {
            var user = controller.user[index];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                onTap: () {
                  Get.toNamed(Routes.EDIT, arguments: user.id);
                },
                title: Text(user.name.toString()),
                tileColor: Colors.amber,
                subtitle: Text(user.email.toString()),
                trailing: IconButton(
                  onPressed: () {
                    controller.delleteUser(user.id.toString());
                  },
                  icon: const Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
