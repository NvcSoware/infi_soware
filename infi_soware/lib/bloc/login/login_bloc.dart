import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/api_service.dart';
import '../../model/company_element.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  ApiService apiService;
  LoginBloc(this.apiService) : super(LoginInitial()) {
    on<LoginSubmitted>(_loginSubmitted);
  }

  Future<void> _loginSubmitted(
      LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    try {
      final companies =
          await apiService.login(event.userName, event.userPassword);
      emit(LoginSuccess(companies));
    } catch (e) {
      log('Error is $e');
      emit(LoginFailure('Error : $e'));
    }
  }
}
