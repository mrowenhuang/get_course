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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({super.key});
  var myCounter = Get.put(counter());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<counter>(
            // initState: (state) => print("initstate"),
            // didChangeDependencies: (state) => print("did change"),
            // didUpdateWidget: (oldWidget, state) => print("update"),
            // dispose: (state) => print("dispose"),
              builder: (controller) {
                return Text("Counter Value : ${controller.counterValue}");
              },
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    Get.to(() => otherPage());
                  },
                  highlightColor: Colors.pink,
                  splashColor: Colors.amber,
                  child: Center(child: Text("Next ppage")),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myCounter.IncrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class otherPage extends StatelessWidget {
  // const otherPage({super.key});

  var myTextCont = Get.put(TextController());
  // @ pada saat masuk ke halaman otherPage data di inisialisasikan ulang lalu pada saat kembali ke halaman sebelumnya data akan kembali di hapus dan di bersihkan dari textfield dan juga dari ram
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          controller: myTextCont.myTextController,
        ),
      ),
    );
  }
}

class counter extends GetxController {
  var counterValue = 0;

  void IncrementCounter() {
    counterValue++;
    update();
  }
}

class TextController extends GetxController {
  final myTextController = TextEditingController();
}
