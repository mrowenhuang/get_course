import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_connect_17/const.dart';
import 'package:getx_connect_17/controller/users_c.dart';
import 'package:getx_connect_17/routes/routes_name.dart';
import 'package:getx_connect_17/widgets/button_custom.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  var userCont = Get.find<UserC>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              userCont.InitialData();
            },
            icon: Icon(Icons.remove_red_eye),
          )
        ],
      ),
      body: Obx(
        () => userCont.users.isEmpty
            ? const Center(
                child: Text("No data at here"),
              )
            : SafeArea(
                child: ListView.builder(
                  itemCount: userCont.users.length,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        tileColor: Colors.blueGrey,
                        titleTextStyle: TextStyle(color: Colors.white),
                        title: Text(userCont.users[index].name),
                        subtitle: Text(
                          userCont.users[index].email,
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        leading: Text(
                          "${index + 1}",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          Get.toNamed(RoutesName.profilePage,
                              arguments: userCont.users[index].id);
                        },
                        splashColor: Colors.white24,
                        trailing: IconButton(
                          onPressed: () {
                            userCont.DeleteUser(userCont.users[index].id);
                          },
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                        ),
                      ),
                    );
                  },
                ),
              ),
      ),
      floatingActionButton: ButtonCustom(
        onTap: () {
          Get.toNamed(RoutesName.addPage);
        },
        title: 'Add Data',
        icon: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
