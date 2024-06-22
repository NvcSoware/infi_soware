import 'package:flutter/material.dart';
import 'package:infi_soware/ui/widgets/custom_list_tile.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: ListView(
        children: [
          Row(
            children: [
              Icon(
                Icons.dashboard,
                color: Colors.white60,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'DashBoard',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.view_agenda,
                color: Colors.white60,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Views',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          CustomListTile(
              iconData: Icons.abc_outlined,
              title: 'Price Checker',
              onTap: () {
                Navigator.pop(context);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Price View',
              onTap: () {
                Navigator.pop(context);
              }),
          CustomListTile(
            iconData: Icons.abc,
            title: 'Price Stock',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          CustomListTile(
            iconData: Icons.abc,
            title: 'Sales',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
