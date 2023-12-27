import 'dart:convert';

import 'package:get/get.dart';

class UserProvider extends GetConnect {
  var fireBaseUrl =
      "https://fir-project-e6829-default-rtdb.asia-southeast1.firebasedatabase.app/";

  Future<Response> postUser(String name, String email, String phone) {
    final body = jsonEncode({
      'name': name,
      'email': email,
      'phone': phone,
    });

    return post(fireBaseUrl + "users.json", body);
  }

  Future<Response> updateUser(String id, String name, String email, String phone) {
    final body = jsonEncode({
      'name': name,
      'email': email,
      'phone': phone,
    });

    return patch(fireBaseUrl + "users/$id.json" , body);
  }

  Future<Response> DeleteData(String id) {
    return delete(fireBaseUrl + "users/$id.json");
  }

  Future<Response> GetData () async {
    return await get (fireBaseUrl + "users.json");
  }
}
