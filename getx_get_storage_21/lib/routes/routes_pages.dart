import 'package:get/get.dart';
import 'package:getx_get_storage_21/pages/home_page.dart';
import 'package:getx_get_storage_21/pages/login_page.dart';
import 'package:getx_get_storage_21/routes/routes_name.dart';

class RoutesPages {
  static final routesPage = [
    GetPage(
      name: RoutesName.homePage,
      page: () =>  MyHomePage(),
    ),
    GetPage(
      name: RoutesName.loginPage,
      page: () => LoginPage(),
    ),
  ];
}
