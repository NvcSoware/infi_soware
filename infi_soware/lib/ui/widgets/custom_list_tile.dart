import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final bool isSelected;
  const CustomListTile(
      {super.key,
      required this.iconData,
      required this.title,
      required this.onTap,
      this.backgroundColor = const Color(0xff00447e),
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: ListTile(
        leading: Icon(
          iconData,
          color:
              isSelected ? Theme.of(context).colorScheme.primary : Colors.grey,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        onTap: onTap,
        selected: isSelected,
      ),
    );
  }
}
