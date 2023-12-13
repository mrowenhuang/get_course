import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({super.key});
  var myCounter = Get.put(Counter());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Obx(
          //   () => Text(
          //     "obx ${myCounter.counter..toString()}",
          //     style: Theme.of(context).textTheme.headline1,
          //   ),
          // ),
          // GetX<Counter>(
          //   builder: (controller) => Text(
          //     "GetX ${controller.counter}",
          //     style: Theme.of(context).textTheme.headline1,
          //   ),
          // ),
          GetBuilder<Counter>(
            id: "counter1",
            builder: (controller) {
              return Text(
                "Get Builder ${controller.counter}",
                style: Theme.of(context).textTheme.headline3,
              );
            },
          ),
          GetBuilder<Counter>(
            id: "counter2",
            builder: (controller) {
              return Text(
                "Get Builder ${controller.counter}",
                style: Theme.of(context).textTheme.headline3,
              );
            },
          ),
          GetBuilder<Counter>(
            id: "counter3",
            builder: (controller) {
              return Text(
                "Get Builder ${controller.counter}",
                style: Theme.of(context).textTheme.headline3,
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myCounter.IncrementCounter();
        },
      ),
    );
  }
}


// @ penggunaan seperti ini hanya bisa di jalankan di dalam kelas getBuilder ini seperti provider di mana fungsi update itu layaknya changenotifier
class Counter extends GetxController {
  var counter = 0;

  void IncrementCounter() {
    counter++;
    // @ untuk mengakses id yang kita buat pada getBuilder jadi id yang tidak ada di dalam sini nilainya tidak akan terupdate atau berubah 
    update(['counter1','counter3']);
  }
}
