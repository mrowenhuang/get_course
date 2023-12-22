import 'package:get/get.dart';
import 'package:getx_bindings_14/bindings/counter_b.dart';
import 'package:getx_bindings_14/pages/counter_pages.dart';
import 'package:getx_bindings_14/pages/home_pages.dart';
import 'package:getx_bindings_14/routes/routes_name.dart';

class RoutesPage {
  static final routespage = [
    GetPage(
      name: RoutesName.home_page,
      page: () => const MyHomePage(),
    ),
    GetPage(
      name: RoutesName.counter_page,
      page: () => CounterPage(),
      binding: CounterBindings(),
    )
  ];
}
