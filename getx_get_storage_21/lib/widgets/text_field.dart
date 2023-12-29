import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldCustom extends StatelessWidget {
  TextFieldCustom({
    super.key,
    required this.icons,
    required this.title,
    required this.controller,
  });

  Icon icons;
  String title;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(15)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(15)),
        label: Text(title),
        prefixIcon: Icon(Icons.email),
      ),
    );
  }
}
