import 'package:get/get.dart';

class UsersProvider extends GetConnect {
  final _baseUrl =
      "https://fir-project-e6829-default-rtdb.asia-southeast1.firebasedatabase.app/";

  Future<Response> getUsers() async {
    final response = await get(_baseUrl + "users.json");
    return response;
  }

  Future<Response> postUsers(String name, String job, String email) async {
    return await post("${_baseUrl}users.json", {
      "name": name,
      "job": job,
      "email": email,
    });
  }

  Future<Response> deleteUsers(String id) async =>
      await delete(_baseUrl + 'users/$id.json');

  Future<Response> editData(
      String id, String name, String job, String email) async {
    return await patch(
      "${_baseUrl}users/$id.json",
      {
        "name": name,
        "job": job,
        "email": email,
      },
    );
  }
}
