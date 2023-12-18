import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_depedency_management_11/main.dart';
import 'package:getx_depedency_management_11/page/text_page.dart';

class CounterPage extends StatelessWidget {
  var myCont = Get.find<OurController>(tag: "counter-tag");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => TextPage());
            },
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("value ${myCont.counter}"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    myCont.counter.value--;
                  },
                  child: Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () {
                    myCont.counter.value++;
                  },
                  child: Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
