part of 'login_bloc.dart';

abstract class LoginEvent {}

class UserNameChanged extends LoginEvent {
  final String userName;

  UserNameChanged(this.userName);
}

class PasswordChanged extends LoginEvent {
  final String password;

  PasswordChanged(this.password);
}

class LoginSubmitted extends LoginEvent {
  final String userName;
  final String userPassword;
  LoginSubmitted({required this.userName, required this.userPassword});
}
