// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_create_13/controllers/getController.dart';
import 'package:getx_create_13/pages/counter_page.dart';

class MyHomePage extends StatelessWidget {
  var myCont = Get.put(MyController(), tag: "hasil", permanent: false);
  // @ untuk penggunaan create kita harus melakukan inisialisasi penggilan di awal terlebih dahulu dengan find
  var mycont = Get.create(() => MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.w,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  myCont.status.value = !myCont.status.value;
                  print("tapped");
                  print(myCont.status.value);
                },
                child: Obx(
                  () => AnimatedSwitcher(
                    duration: Duration(seconds: 2),
                    child: myCont.status.value
                        ? Icon(
                            key: ValueKey(1),
                            Icons.shopping_bag,
                            size: 300,
                            color: Colors.white,
                          )
                        : Icon(
                            key: ValueKey(2),
                            Icons.shopping_bag,
                            size: 300,
                            color: Colors.blue,
                          ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 200,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.lightBlue[300],
                borderRadius: BorderRadius.circular(15)),
            child: Material(
              borderRadius: BorderRadius.circular(15),
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Get.to(() => CounterPage());
                },
                splashColor: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Text(
                    "Shop Page",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
