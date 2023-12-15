import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dynamic_url_07/routes/routes_name.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // @ untuk menambahkan lebih dari 1 keyword gunakan & 
                Get.toNamed(RoutesName.productDetailPage + "/1?name=shirt&price=100");
              },
              child: Text("product 1"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutesName.productDetailPage + "/2?name=pants&price=130");
              },
              child: Text("product 2"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutesName.productDetailPage + "/3?name=polo&price=110");
              },
              child: Text("product 3"),
            ),
          ],
        ),
      ),
    );
  }
}
