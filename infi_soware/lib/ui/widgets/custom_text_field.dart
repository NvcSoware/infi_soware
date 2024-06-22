import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String? Function(String?) validator;
  // final ValueChanged<String> onChanged;
  const CustomTextformfield(
      {required this.controller,
      required this.hintText,
      this.obscureText = false,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Theme.of(context).colorScheme.primary),
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
