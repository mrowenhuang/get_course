import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_connect_17/const.dart';
import 'package:getx_connect_17/controller/add_c.dart';
import 'package:getx_connect_17/controller/users_c.dart';
import 'package:getx_connect_17/widgets/button_custom.dart';
import 'package:getx_connect_17/widgets/text_field.dart';

class AddPage extends StatelessWidget {
  AddPage({super.key});

  final addCont = Get.find<AddC>();
  final userCont = Get.find<UserC>();

  @override
  Widget build(BuildContext context) {
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
              textEditingControllerValue: addCont.nameC,
              label: 'Name',
              icon: Icon(Icons.person),
            ),
            const SizedBox(height: 10),
            TextFormFieldCustom(
              textEditingControllerValue: addCont.emailC,
              label: 'Email',
              icon: Icon(Icons.mail),
            ),
            const SizedBox(height: 10),
            TextFormFieldCustom(
              textEditingControllerValue: addCont.phoneC,
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
                userCont.AddUserC(
                  addCont.nameC.text,
                  addCont.emailC.text,
                  addCont.phoneC.text,
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
