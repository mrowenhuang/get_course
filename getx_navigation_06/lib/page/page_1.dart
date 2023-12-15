import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_06/page/page_2.dart';

class page_1 extends StatelessWidget {
  const page_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page_1"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text("Value"),
            SizedBox(height: 30),
            Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54, blurRadius: 10, spreadRadius: 5)
                ],
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue,
                    Colors.purple,
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: () {
                    // @ ini merupakan navigation page tanpa nama dengan menggunakan class untuk melakukan navigation
                    // Get.to(page_2(),arguments: "its from page 1");

                    // @ ini merupakan navigation page dengan nama
                    Get.toNamed("/page_2",arguments: "its from page 1");
                  },
                  splashColor: Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                  child: Center(
                    child: Text(
                      "Next Page",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
