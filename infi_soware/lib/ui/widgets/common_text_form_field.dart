import 'package:flutter/material.dart';

class CommonTextFormFiled extends StatelessWidget {
  final TextEditingController controller;
  const CommonTextFormFiled({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3),
              borderRadius: BorderRadius.circular(15))),
    );
  }
}