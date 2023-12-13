import 'package:get/get.dart';
import 'package:state_manager_getx_02/models/person.dart';

class PersonController extends GetxController {
  var person1 = Person(name: "owen", age: 18).obs;

  void ChangeToUppercase() {
    person1.update((val) {
      person1.value.name = person1.value.name.toString().toUpperCase();
    });
  }
}
