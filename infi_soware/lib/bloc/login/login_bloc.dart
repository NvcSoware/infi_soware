import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:infi_soware/model/login_response.dart';

import 'package:meta/meta.dart';

import '../../data/api_service.dart';
import '../../model/company_element.dart';

part 'login_event.dart';
part 'login_state.dart';

class BranchListBloc extends Bloc<BranchListEvent, BranchListState> {
  ApiService apiService;
  BranchListBloc(this.apiService) : super(BranchListInitialState()) {
    on<LoginEvent>(_loginSubmitted);
  }

  Future<void> _loginSubmitted(
      LoginEvent event, Emitter<BranchListState> emit) async {
    emit(BranchListLoaingState());
    try {
      final loginResponse =
          await apiService.login(event.userName, event.userPassword);

      emit(BranchListSuccessState(loginResponse));
    } catch (e) {
      log('Error is $e');
      emit(BranchListErrorState('Error : $e'));
    }
  }
}
