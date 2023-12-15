import 'package:get/get.dart';
import 'package:getx_dynamic_url_07/pages/detail_page.dart';
import 'package:getx_dynamic_url_07/pages/home_page.dart';
import 'package:getx_dynamic_url_07/pages/product_page.dart';
import 'package:getx_dynamic_url_07/routes/routes_name.dart';

class RoutesPage {
  static final Page = [
    GetPage(name: RoutesName.homePage, page: () => MyHomePage()),
    GetPage(name: RoutesName.productPage, page: () => ProductPage()),
    // @ pada bagian Getpage yang kita lakukan modifikasi parameter yang ingin kita pakai penggunaan setelah tanda tanyak berarti data yang kita masukan sudah bebas 
    GetPage(name: RoutesName.productDetailPage + "/:id?", page: () => detail_page()),
  ];
}
