import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldCustom extends StatelessWidget {
  TextFormFieldCustom({
    super.key,
    required this.label,
    required this.icon,
    required this.textEditingControllerValue,
  });

  String label;
  Icon icon;
  TextEditingController textEditingControllerValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingControllerValue,
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
        prefixIconColor: Colors.blueGrey,
        filled: true,
        fillColor: Colors.white,
        label: Text(label),
        labelStyle: const TextStyle(fontSize: 20, color: Colors.blueGrey),
        prefixIcon: icon,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blueGrey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blueGrey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
