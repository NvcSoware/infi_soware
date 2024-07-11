import 'package:flutter/material.dart';

class CustomDateField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final Function() onTap;
  const CustomDateField(
      {super.key,
      required this.labelText,
      required this.controller,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodySmall,
      controller: controller,
      decoration: InputDecoration(
          labelText: labelText, suffixIcon: Icon(Icons.calendar_today)),
      readOnly: true,
      onTap: onTap,
    );
  }
}
