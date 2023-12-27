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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Home Page"),
            ElevatedButton(
              onPressed: () {
                Get.to(() => SecondPage(), arguments: "ini dari homepage");
              },
              child: Text("Next Page"),
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Second Page"),
            Text("ini adalah arguments : ${Get.arguments}"),
            Text("ini adalah rawroutes : ${Get.rawRoute}"),
            Text("ini adalah routing : ${Get.routing}"),
            ElevatedButton(
              onPressed: () {
                Get.to(() => ThirdPage());
              },
              child: Text("Next Page"),
            )
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Third Page"),
            Text("ini adalah nama dari halaman : ${Get.previousRoute}"),
            Text("ini adalah issncakbar : ${Get.isSnackbarOpen}"),
            ElevatedButton(onPressed: () {}, child: Text("Next Page"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print(Get.isSnackbarOpen);
        Get.snackbar("hello", "world");
      }),
    );
  }
}


// @ menerima arguments dari halaman sebelumnya
// ^ Get.arguments
// @ menampilkan nama screen sebelumnya
// ^ Get.previousRoute
// @ menampilkan semua data di dalam routes
// ^ Get.rawRoute
// @ merupakan sebuah instance yang bisa di gunakan untuk memanggil apis lain
// ^ Get.routing.(...)
// @ memeriksa apakah fitur berfungsi dia akan mengembalikan nilai bool
// ^ Get.isSnackbarOpen
// ^ Get.isDialogOpen
// ^ Get.isBottomSheetOpen

// ! keterangan yang lain bisa di akses di https://pub.dev/packages/get#other-advanced-apis