part of 'login_bloc.dart';

class LoginState {
  // final String username;
  // final String password;

  // LoginState({this.username = '', this.password = ''});

  // LoginState copyWith({String? username, String? password}) {
  //   return LoginState(
  //       username: username ?? this.username,
  //       password: password ?? this.password);
  // }
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final List<CompanyElement> companies;
  LoginSuccess(this.companies);
}

class LoginFailure extends LoginState {
  final String error;
  LoginFailure(this.error);
}
