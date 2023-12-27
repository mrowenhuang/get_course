import 'package:get/get.dart';
import 'package:getx_connect_17/controller/add_c.dart';

class AddBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(AddC());
  }
}
