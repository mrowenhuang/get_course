import 'package:get/get.dart';

class MyTranslete extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ENG": {
          "title": "This is %s",
          "body": "this number is from @object",
        },
        "IND": {
          "title": "ini flutter",
          "body": "angka saat ini",
        }
      };
}
