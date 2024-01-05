import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldAddWidgets extends StatelessWidget {
  TextFieldAddWidgets({
    super.key,
    required this.label,
    required this.controller,
  });

  String label;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text(label),
      ),
    );
  }
}
