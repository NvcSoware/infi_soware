import 'package:flutter/material.dart';
import 'package:infi_soware/routes.dart';
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
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
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
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.view_agenda,
                  color: Colors.white60,
                ),
              ),
              const SizedBox(
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
                Navigator.pushNamed(context, '/priceCheckerScreen');
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Price View',
              onTap: () {
                Navigator.pop(context);
              }),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.view_agenda,
                  color: Colors.white60,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                'Inventory',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
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
              Navigator.pushNamed(context, Routes.sales);
              //Navigator.pop(context);
            },
          ),
          CustomListTile(
              iconData: Icons.abc,
              title: 'GRN',
              onTap: () {
                Navigator.pushNamed(context, Routes.grn);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Sales Order',
              onTap: () {
                Navigator.pushNamed(context, Routes.salesOrder);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Quotation',
              onTap: () {
                Navigator.pushNamed(context, Routes.quotation);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Physical Stock',
              onTap: () {
                Navigator.pushNamed(context, Routes.physicalStock);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Transfer In',
              onTap: () {
                Navigator.pushNamed(context, Routes.trnsferIn);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Transfer out',
              onTap: () {
                Navigator.pushNamed(context, Routes.transferOut);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Stock Adjust',
              onTap: () {
                Navigator.pushNamed(context, Routes.stockAdjust);
              }),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.view_agenda,
                  color: Colors.white60,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                'Accounts',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Reciept',
              onTap: () {
                Navigator.pushNamed(context, Routes.reciept);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Payment',
              onTap: () {
                Navigator.pushNamed(context, '/paymentScreen');
              }),
          Row(
            children: [
              const Icon(
                Icons.view_agenda,
                color: Colors.white60,
              ),
              const SizedBox(
                width: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Report',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Account Ledger',
              onTap: () {
                Navigator.pushNamed(context, Routes.accountLedger);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Customer Balance in days',
              onTap: () {
                Navigator.pushNamed(context, Routes.balanceInDays);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Daily Transaction',
              onTap: () {
                Navigator.pushNamed(context, Routes.dailyTransaction);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Transaction Summary',
              onTap: () {
                Navigator.pushNamed(context, Routes.transactionSummery);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Daily Closing',
              onTap: () {
                Navigator.pushNamed(context, Routes.dailyClosing);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Invoice Report',
              onTap: () {
                Navigator.pushNamed(context, Routes.invoiceReport);
              }),
          CustomListTile(
              iconData: Icons.abc,
              title: 'Invoice Item',
              onTap: () {
                Navigator.pushNamed(context, Routes.invoiceItem);
              }),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.view_agenda,
                  color: Colors.white60,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                'Layout',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          CustomListTile(
              iconData: Icons.abc, title: 'Member Creation', onTap: () {}),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.view_agenda,
                  color: Colors.white60,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                'About',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
