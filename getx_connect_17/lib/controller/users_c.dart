
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_connect_17/models/user.dart';
import 'package:getx_connect_17/providers/users_provider.dart';

class UserC extends GetxController {
  var users = List<User>.empty().obs;

  void mySnackbar(String title, String message) {
    Get.snackbar(
      title,
      message,
      duration: Duration(seconds: 2),
      backgroundColor: Colors.red.withOpacity(.6),
      colorText: Colors.white,
    );
  }

  User GetUserById(String id) {
    return users.firstWhere((element) => element.id == id);
  }

  void AddUserC(String name, String email, String phone) {
    if (name != '' && email != '' && phone != '') {
      if (email.contains('@')) {
        UserProvider().postUser(name, email, phone).then(
          (value) {
            users.add(
              User(
                id: value.body['name'].toString(),
                name: name,
                email: email,
                phone: phone,
              ),
            );
          },
        );
      } else {
        mySnackbar("Error Email", "Please input valid email");
      }
    } else {
      mySnackbar("Error Field", "Input value to the field");
    }
  }

  void UpdateUserC(String id, String name, String email, String phone) {
    if (name != '' && email != '' && phone != '') {
      if (email.contains('@')) {
        // @ ini cara manual mencari data di dalam list
        // var userData = users.firstWhere((element) => element.id == id);
        // userData.name = name;
        // userData.email = email;
        // userData.phone = phone;
        // users.refresh();

        var userData = GetUserById(id);
        userData.name = name;
        userData.email = email;
        userData.phone = phone;
        users.refresh();
      } else {
        mySnackbar("Error Email", "Please input valid email");
      }
    } else {
      mySnackbar("Error Field", "Input value to the field");
    }
  }

  void DeleteUser(String id) {
    UserProvider().DeleteData(id).then((value) {
      users.removeWhere((element) => element.id == id);
      users.refresh();
    });
  }

  void InitialData() {
    UserProvider().GetData().then((value) {
      var userData = value.body as Map<String, dynamic>;

      userData.forEach((key, value) {
        users.add(
          User(
            id: key.toString(),
            name: value['name'],
            email: value['email'],
            phone: value['phone'],
          ),
        );
      });
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    InitialData();
    super.onInit();
  }
}
