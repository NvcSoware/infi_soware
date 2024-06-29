import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infi_soware/constants.dart';
import 'package:infi_soware/model/login_response.dart';
import 'package:infi_soware/ui/screen/home_screen.dart';
import 'package:infi_soware/ui/widgets/custom_button.dart';
import 'package:infi_soware/model/login_response.dart';

import '../../bloc/login/login_bloc.dart';

class BranchListPopup extends StatefulWidget {
  List<CompanyList> branches;
  Function(CompanyList) onBranchSelected;
  BranchListPopup(
      {super.key, required this.branches, required this.onBranchSelected})
      : assert(branches.isNotEmpty);

  @override
  State<BranchListPopup> createState() => _BranchListPopupState();
}

class _BranchListPopupState extends State<BranchListPopup> {
  int selectedBranchIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      //backgroundColor: Theme.of(context).colorScheme.onSecondary,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              branchList,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.branches.length,
                  itemBuilder: (context, index) {
                    final branch = widget.branches[index];
                    final isSelected = index == selectedBranchIndex;
                    return Card(
                      color: isSelected
                          ? Theme.of(context).colorScheme.onSecondary
                          : Theme.of(context).colorScheme.primary,
                      elevation: 5,
                      child: InkWell(
                        onTap: () => setState(() {
                          selectedBranchIndex = index;
                        }),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              branch.companyCode,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              branch.companyName,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Text(
                              branch.companyAddress,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            SizedBox(
                              height: 5,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                  onPressed: () {},
                  child: Text(btnClose),
                  color: Theme.of(context).colorScheme.onSecondary,
                  size: Size(90, 40),
                ),
                SizedBox(
                  width: 16,
                ),
                CustomButton(
                  onPressed: selectedBranchIndex != -1
                      ? () {
                          final selectedBranch =
                              widget.branches[selectedBranchIndex];
                          widget.onBranchSelected(selectedBranch);
                          _navigateToHomeScreen(context, selectedBranch);
                        }
                      : null,
                  child: Text(
                    btnSelect,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  color: Theme.of(context).colorScheme.onPrimary,
                  size: Size(90, 40),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

_navigateToHomeScreen(BuildContext context, CompanyList selectedBranch) {
  final loginState = context.read<LoginBloc>().state;
  //if (loginState is LoginSuccessState) {
  // log(loginState.toString());
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(
          selectedBranch: selectedBranch,
          // userName: loginState.companies.user.userName,
          // financialYear: loginState.companies.finYear.yearNumber,
        ),
      ));
  // }
}
