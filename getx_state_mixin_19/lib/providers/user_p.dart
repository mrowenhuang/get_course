import 'package:get/get.dart';

class UserProvider extends GetConnect {
  Future<Response> getUser () {
    return get("https://reqres.in/api/users/2");
  }
}