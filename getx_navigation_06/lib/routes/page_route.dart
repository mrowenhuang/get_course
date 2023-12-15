import 'package:get/get.dart';
import 'package:getx_navigation_06/page/page_1.dart';
import 'package:getx_navigation_06/page/page_2.dart';
import 'package:getx_navigation_06/page/page_3.dart';
import 'package:getx_navigation_06/page/page_4.dart';

class RoutePage {
  static final Page = [
    GetPage(name: "/", page: () => page_1()),
    GetPage(name: "/page_2", page: () => page_2()),
    GetPage(name: "/page_3", page: () => page_3()),
    GetPage(name: "/page_4", page: () => page_4()),
  ];
}