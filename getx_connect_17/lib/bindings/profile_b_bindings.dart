import 'package:get/get.dart';
import 'package:getx_connect_17/controller/profile_c.dart';

class ProfileBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ProfileC());
  }
  
}