import 'package:get/get.dart';
import 'package:getx_connect_17/bindings/add_b_bindings.dart';
import 'package:getx_connect_17/bindings/profile_b_bindings.dart';
import 'package:getx_connect_17/bindings/users_b_bindings.dart';
import 'package:getx_connect_17/pages/add_page.dart';
import 'package:getx_connect_17/pages/home_pages.dart';
import 'package:getx_connect_17/pages/profile_page.dart';
import 'package:getx_connect_17/routes/routes_name.dart';

class RoutesPages {
  static final routesPages = [
    GetPage(
      name: RoutesName.homePage,
      page: () => MyHomePage(),
      binding: UserBindings(),
    ),
    GetPage(
      name: RoutesName.addPage,
      page: () => AddPage(),
      bindings: [
        UserBindings(),
        AddBinding(),
      ],
    ),
    GetPage(
      name: RoutesName.profilePage,
      page: () => ProfilePage(),
      bindings: [
        ProfileBindings(),
        UserBindings(),
      ],
    )
  ];
}
