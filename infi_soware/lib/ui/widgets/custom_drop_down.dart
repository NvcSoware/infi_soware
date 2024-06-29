import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> items;
  final String hint;
  final Function(String) onChanged;

  const CustomDropDown(
      {required this.items, required this.hint, required this.onChanged});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: selectedItem,
        hint: Text(widget.hint),
        isExpanded: true,
        icon: Icon(Icons.arrow_drop_down),
        items: widget.items.map((String item) {
          return DropdownMenuItem(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedItem = newValue;
          });
          widget.onChanged(newValue!);
        },
      ),
    ));
  }
}
