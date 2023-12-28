import 'package:get/get.dart';
import 'package:getx_state_mixin_19/providers/user_p.dart';

class CounterC extends GetxController with StateMixin<Map<String, dynamic>> {
  // var counterValue = 0.obs;

  void getData() {
    change(null,status: RxStatus.loading());
    try {
      UserProvider().getUser().then(
        (value) {
          if (value.statusCode == 200) {
            change(
              value.body['data'] as Map<String, dynamic>,
              status: RxStatus.success(),
            );
          } else {
            change(null, status: RxStatus.error("Connection To Api Failed"));
          }
        },
      );
    } catch (err) {
      change(null, status: RxStatus.error(err.toString()));
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    change(null, status: RxStatus.empty());
    super.onInit();
  }
}
// @ untuk dokumentasi ada apa https://pub.dev/packages/get#statemixin


