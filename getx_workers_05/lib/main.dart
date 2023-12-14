import 'dart:async';

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
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              myCounter.Reset();
            },
            icon: Icon(Icons.restart_alt),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              'perubahan data sebanyak ${myCounter.counter} X',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              onChanged: (value) {
                myCounter.Increment();
              },
            ),
          )
        ],
      ),
    );
  }
}

class Counter extends GetxController {
  var counter = 0.obs;
  var data = 0.obs;

  void Increment() {
    counter++;
  }

  void Reset() {
    counter.value = 0;
  }

  // @ on init merupakan perintah yang di jalankan setelah class di buat dan sebelum class di inisialisasi
  @override
  void onInit() {
    print("start init");

    // @ function ini akan di jalankan pada saat ada perubahan di dalam kelas counternya
    //^ ever(counter, (callback) {
    //^   print("printed value");
    //^ });

    // @ function ini sama dengan ever namun dia bisa menrima lebih 1 parameter variabel dengan menggunakan list di dalam function di mana bila 1 data saja yang berubah maka fungsi akan di jalankan
    //^ everAll([counter,data], (callback) {
    //^   print("printed value");
    //^ });

    // @ function ini hanya akan di jalankan 1 kali saja
    //^ once(counter, (callback) {
    //^   print("once value");
    //^ });

    // @ function ini akan di jalankan pada saat user berhenti melakukan sesuatu selama waktu yang di tentukan maka function di jalankan
    //^ debounce(
    //^   counter,
    //^   (callback) => print("Debounce"),
    //^   time: Duration(seconds: 3),
    //^ );

    // @ function ini akan di jalankan terus menerus selama interval 3 detik pada saat user melakukan sesuatu
    //^ interval(
    //^   counter,
    //^   (callback) => print("interval"),
    //^   time: Duration(seconds: 2),
    //^ );

    super.onInit();
  }
}
