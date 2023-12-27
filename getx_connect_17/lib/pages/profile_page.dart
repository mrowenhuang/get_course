import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_connect_17/const.dart';
import 'package:getx_connect_17/controller/profile_c.dart';
import 'package:getx_connect_17/controller/users_c.dart';
import 'package:getx_connect_17/widgets/button_custom.dart';
import 'package:getx_connect_17/widgets/text_field.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  var profileCont = Get.find<ProfileC>();
  var usersCont = Get.find<UserC>();
  var getArgu = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final user = usersCont.GetUserById(getArgu.toString());
    profileCont.nameC.text = user.name;
    profileCont.emailC.text = user.email;
    profileCont.phoneC.text = user.phone;
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        title: Text("Add Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormFieldCustom(
              textEditingControllerValue: profileCont.nameC,
              label: 'Name',
              icon: Icon(Icons.person),
            ),
            const SizedBox(height: 10),
            TextFormFieldCustom(
              textEditingControllerValue: profileCont.emailC,
              label: 'Email',
              icon: Icon(Icons.mail),
            ),
            const SizedBox(height: 10),
            TextFormFieldCustom(
              textEditingControllerValue: profileCont.phoneC,
              label: 'Phone',
              icon: Icon(Icons.phone),
            ),
            const SizedBox(height: 10),
            ButtonCustom(
              title: "Enter",
              icon: const Icon(
                Icons.navigate_next_rounded,
                size: 30,
                color: Colors.white,
              ),
              onTap: () {
                usersCont.UpdateUserC(
                  getArgu,
                  profileCont.nameC.text,
                  profileCont.emailC.text,
                  profileCont.phoneC.text,
                );
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
