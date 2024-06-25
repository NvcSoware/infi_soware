import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infi_soware/bloc/login/login_bloc.dart';
import 'package:infi_soware/data/api_service.dart';
import 'package:infi_soware/ui/widgets/drawer_content.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  final String password;
  //final List<CompanyElement> companies;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomeScreen({Key? key, required this.username, required this.password});

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
      body: BlocProvider(
        create: (context) => BranchListBloc(ApiService()),
        child: BlocBuilder<BranchListBloc, BranchListState>(
            builder: (context, state) {
          if (state is BranchListSuccessState) {
            final companies = state.companies;

            return ListView.builder(
              itemCount: state.companies.length,
              itemBuilder: (context, index) {
                final company = companies[index];
                return Text(
                  company.companyName!,
                  style: TextStyle(color: Colors.green),
                );
              },
            );
          } else if (state is BranchListErrorState) {
            return Text(state.error);
          }
          return Text(state.toString());
        }),
      ),
    );
  }
}
