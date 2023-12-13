import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_01/get_counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var getCounterController = Get.put(GetCounter());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: getCounterController.themeActive.value
            ? ThemeData.light()
            : ThemeData.dark(),
        home: MyHomePage(),
      );
    });
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  var getCounterController = Get.find<GetCounter>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              getCounterController.counter.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  getCounterController.Decrement();
                },
                child: Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () {
                  getCounterController.changeTheme();
                },
                child: Icon(Icons.color_lens),
              ),
              FloatingActionButton(
                onPressed: () {
                  getCounterController.Increment();
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
