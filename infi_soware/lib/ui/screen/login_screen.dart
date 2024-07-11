import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infi_soware/bloc/login/login_bloc.dart';
import 'package:infi_soware/constants.dart';
import 'package:infi_soware/data/api_service.dart';
import 'package:infi_soware/ui/widgets/custom_button.dart';
import 'package:infi_soware/ui/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required String name});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userNameController = TextEditingController();
  final _userPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _loginBloc = LoginBloc(ApiService());
  @override
  void dispose() {
    _userNameController.dispose();
    _userPasswordController.dispose();
    _loginBloc.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _loginBloc,
      child: Scaffold(
        body: Container(
          color: Theme.of(context).colorScheme.primary,
          child: Center(
              child: Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            padding: const EdgeInsets.all(16),
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
                  BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) {
                      if (state is LoginSuccessState) {
                        state.showBranchListPopup(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                backgroundColor: Colors.green,
                                content: Text(loginSuccess)));
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => HomeScreen(
                        //               companies: state.companies.companyList,
                        //             )
                        //             )
                        //             );
                      } else if (state is LoginErrorState) {
                        log(state.error);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(state.error),
                          backgroundColor: Colors.red,
                        ));
                      }
                    },
                    builder: (context, state) {
                      if (state is LoginLoaingState) {
                        return const CircularProgressIndicator();
                      }
                      return CustomButton(
                          color: Theme.of(context).colorScheme.onSecondary,
                          size: const Size(double.infinity, 48),
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              context.read<LoginBloc>().add(LoginEvent(
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
      ),
    );
  }
}
