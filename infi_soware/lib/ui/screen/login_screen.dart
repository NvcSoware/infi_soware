import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infi_soware/bloc/login/login_bloc.dart';
import 'package:infi_soware/constants.dart';
import 'package:infi_soware/data/api_service.dart';
import 'package:infi_soware/ui/widgets/custom_button.dart';
import 'package:infi_soware/ui/widgets/custom_text_field.dart';

import '../../routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userNameController = TextEditingController();
  final _userPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Center(
            child: Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0), color: Colors.white),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextformfield(
                  controller: _userNameController,
                  hintText: userName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return enterUserName;
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextformfield(
                  controller: _userPasswordController,
                  hintText: pwd,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return enterPass;
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                BlocConsumer<BranchListBloc, BranchListState>(
                  listener: (context, state) {
                    if (state is BranchListSuccessState) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text(loginSuccess)));
                      Navigator.pushReplacementNamed(context, Routes.home);
                    } else if (state is BranchListErrorState) {
                      log(state.error);
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(state.error)));
                    }
                  },
                  builder: (context, state) {
                    if (state is BranchListLoaingState) {
                      return CircularProgressIndicator();
                    }
                    return CustomButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            context.read<BranchListBloc>().add(LoginEvent(
                                userName: _userNameController.text,
                                userPassword: _userPasswordController.text));
                          }
                        },
                        child: const Text(login));
                  },
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
