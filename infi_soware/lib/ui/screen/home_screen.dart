import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infi_soware/bloc/login/login_bloc.dart';
import 'package:infi_soware/data/api_service.dart';
import 'package:infi_soware/model/login_response.dart';
import 'package:infi_soware/ui/widgets/drawer_content.dart';

class HomeScreen extends StatelessWidget {
  final CompanyList selectedBranch;
  //final String userName;
  //final int financialYear;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomeScreen({
    super.key,
    required this.selectedBranch,
    //required this.userName,
    // required this.financialYear
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text('infi'),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                icon: const Icon(Icons.menu))
          ],
        ),
        drawer: const Drawer(child: DrawerContent()),
        body: Column(
          children: [
            //Text('Welcome : $userName'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Company Name :  ',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  selectedBranch.companyName,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ],
            )
          ],
        ));
  }
}
