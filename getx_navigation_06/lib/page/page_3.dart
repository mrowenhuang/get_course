import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_06/page/page_4.dart';

class page_3 extends StatelessWidget {
  const page_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page_3"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(
            //   Get.arguments,
            //   style: TextStyle(
            //     fontSize: 25,
            //   ),
            // ),
            SizedBox(height: 30),
            Container(
              height: 50,
              width: 150,
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
                    Get.back(result: "this is from third page");
                  },
                  splashColor: Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                  child: Center(
                    child: Text(
                      "<< Back Page",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
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
                  // @ sama dengan push replacement namun menghapus 1 page di belkang saja
                  onTap: () {
                    Get.offNamed("/page_4");
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
