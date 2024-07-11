import 'package:flutter/material.dart';
import 'package:infi_soware/constants.dart';
import 'package:infi_soware/ui/widgets/common_text.dart';
import 'package:infi_soware/ui/widgets/common_text_form_field.dart';
import 'package:infi_soware/ui/widgets/custom_appbar.dart';

class CustomerBalanceInDaysScreen extends StatelessWidget {
  //const BalanceInDaysScreen({super.key});
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: customerBalanceInDays,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonText(text: search),
            const CommonText(text: accountLedger),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  )),
            ),
            const CommonText(text: days),
            CommonTextFormFiled(controller: _controller)
          ],
        ),
      ),
    );
  }
}
