part of 'login_bloc.dart';

abstract class BranchListEvent {}

class LoginEvent extends BranchListEvent {
  final String userName;
  final String userPassword;
  LoginEvent({required this.userName, required this.userPassword});
}
