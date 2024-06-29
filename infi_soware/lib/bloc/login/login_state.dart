part of 'login_bloc.dart';

abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginLoaingState extends LoginState {}

class LoginSuccessState extends LoginState {
  final CompanyElement companies;
  final Function(CompanyList) onBranchSelected;

  LoginSuccessState({required this.companies, required this.onBranchSelected});
  showBranchListPopup(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => BranchListPopup(
              branches: companies.companyList,
              onBranchSelected: onBranchSelected,
            ));
  }
}

class LoginErrorState extends LoginState {
  final String error;

  LoginErrorState(this.error);
}
