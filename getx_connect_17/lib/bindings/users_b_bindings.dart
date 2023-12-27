import 'package:get/get.dart';
import 'package:getx_connect_17/controller/users_c.dart';

class UserBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(UserC());
  }
  
}