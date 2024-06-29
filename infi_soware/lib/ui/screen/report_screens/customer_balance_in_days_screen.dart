import 'package:flutter/material.dart';
import 'package:infi_soware/ui/widgets/common_text_form_field.dart';

class CustomerBalanceInDaysScreen extends StatelessWidget {
  //const BalanceInDaysScreen({super.key});
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                'A/C Ledger',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    )),
              ),
              SizedBox(
                height: 12,
              ),
              CommonTextFormFiled(controller: _controller)
            ],
          ),
        ),
      ),
    );
  }
}
