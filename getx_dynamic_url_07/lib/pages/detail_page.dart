import 'package:flutter/material.dart';
import 'package:get/get.dart';

class detail_page extends StatelessWidget {
  const detail_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // @ untuk mengambil data di dalam routing name ktia menggunakan get.parameters dengan keyword yang kita berikan
        title: Text(Get.parameters['id'].toString()),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              Get.parameters['name'].toString(),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              Get.parameters['price'].toString(),
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
