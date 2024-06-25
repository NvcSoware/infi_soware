part of 'login_bloc.dart';

abstract class BranchListState {}

class BranchListInitialState extends BranchListState {}

class BranchListLoaingState extends BranchListState {}

class BranchListSuccessState extends BranchListState {
  final List<CompanyElement> companies;

  BranchListSuccessState(this.companies);
}

class BranchListErrorState extends BranchListState {
  final String error;

  BranchListErrorState(this.error);
}
