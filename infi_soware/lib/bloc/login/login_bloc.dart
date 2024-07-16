import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:infi_soware/model/login_response.dart';

import '../../data/api_service.dart';
import '../../ui/widgets/branch_list_popup.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  ApiService apiService;
  LoginBloc(this.apiService) : super(LoginInitialState()) {
    on<LoginEvent>(_loginSubmitted);
  }

  Future<void> _loginSubmitted(
      LoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoaingState());
    try {
      final loginResponse =
          await apiService.login(event.userName, event.userPassword);

      emit(LoginSuccessState(
          companies: loginResponse,
          onBranchSelected: (CompanyList) {},
          companyNumber: loginResponse.companyList.companyNumber));
    } catch (e) {
      //log('Error is $e');
      emit(LoginErrorState('Invalid Username or Password'));
    }
  }
}
