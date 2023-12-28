import 'package:get/get.dart';
import 'package:getx_state_mixin_19/controller/counter_c.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(CounterC());
  }
}
