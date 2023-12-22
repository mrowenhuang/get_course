import 'package:get/get.dart';
import 'package:getx_bindings_14/controllers/count_c.dart';

class CounterBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(CountControllers());
  }
}
