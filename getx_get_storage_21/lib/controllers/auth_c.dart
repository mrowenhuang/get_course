import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  var isAuth = false.obs;

  final Map<String, dynamic> _user = {
    'email': 'owen@gmail.com',
    'password': "12345678",
  };

  void mySnackbar(String title, String message) {
    Get.snackbar(title, message,
        backgroundColor: Colors.red[300], colorText: Colors.white);
  }

  Future<void> autoLogin() async {
    final box = GetStorage();
    if (box.read("rememberme") != null) {
      final data = box.read("rememberme");
      login(data['email'], data['password'], data['remember']);
    }
  }

  void login(String email, String password, bool rememberMe) {
    if (email != "" && password != "") {
      if (GetUtils.isEmail(email)) {
        if (email == _user['email'] && password == _user['password']) {
          if (rememberMe) {
            final box = GetStorage();
            box.write(
              "rememberme",
              {
                'email': email,
                'password': password,
                'remember': rememberMe,
              },
            );
          } else {
            final box = GetStorage();
            if (box.read("rememberme") != null) {
              box.erase();
            }
          }

          isAuth.toggle();
        } else {
          mySnackbar("Invalid", "User/Pass not valid");
        }
      } else {
        mySnackbar("Email Error", "Your email no valid");
      }
    } else {
      mySnackbar("Error Field", "Fill all the textfield");
    }
  }

  void logOut() {
    final box = GetStorage();

    if (box.read("rememberme") != null) {
      box.erase();
    }

    isAuth.value = false;
  }
}
