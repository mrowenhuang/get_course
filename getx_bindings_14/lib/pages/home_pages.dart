import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bindings_14/pages/counter_pages.dart';
import 'package:getx_bindings_14/routes/routes_name.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(13),
            child: InkWell(
              splashColor: Colors.white24,
              borderRadius: BorderRadius.circular(13),
              onTap: () {
                Get.toNamed(RoutesName.counter_page);
              },
              child: const Center(
                child: Text(
                  "Next Page",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
