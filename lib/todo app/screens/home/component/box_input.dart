import 'package:flutter/material.dart';

TextField boxInput({
  required String text,
  required controller,
}) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: text,
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 2),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1),
      ),
    ),
  );
}
