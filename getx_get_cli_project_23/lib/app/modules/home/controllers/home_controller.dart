import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_get_cli_project_23/app/modules/home/providers/users_provider.dart';
import 'package:getx_get_cli_project_23/app/modules/home/users_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var user = List<Users>.empty().obs;

  void showSnckbar(String title, String message, Color color) {
    Get.snackbar(
      title,
      message,
      duration: const Duration(
        seconds: 2,
      ),
      backgroundColor: color,
    );
  }

  Users findById(String id) {
    final data = user.firstWhere((element) => element.id == id);
    return data;
  }

  void addUser(String name, String job, String email) {
    UsersProvider().postUsers(name, job, email).then((value) {
      user.add(
        Users(
          id: value.body['name'],
          name: name,
          email: email,
          job: job,
        ),
      );
      user.refresh();
      Get.back();
    });
  }

  void delleteUser(String id) {
    UsersProvider().deleteUsers(id).then((value) {
      user.removeWhere((element) => element.id == id);
      showSnckbar(
        "Success",
        "Dellete successfull",
        Colors.green.withOpacity(.5),
      );
    });
  }

  void editUser(String id, String name, String job, String email) {
    UsersProvider().editData(id, name, job, email).then((_) {
      var data = user.firstWhere((element) => element.id == id);

      data.email = email;
      data.job = job;
      data.name = name;

      user.refresh();
      Get.back();
    });
  }

  void getUser() {
    UsersProvider().getUsers().then((value) {
      if (value.body != null) {
        var data = value.body as Map<String, dynamic>;
        data.forEach((key, value) {
          return user.add(
            Users(
              id: key,
              name: value['name'],
              email: value['email'],
              job: value['job'],
            ),
          );
        });
      }
    });
  }

  @override
  void onInit() {
    super.onInit();
    getUser();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
