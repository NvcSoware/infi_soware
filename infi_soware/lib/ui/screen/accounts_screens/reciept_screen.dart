import 'package:flutter/material.dart';
import 'package:infi_soware/constants.dart';
import 'package:infi_soware/ui/widgets/custom_appbar.dart';

import '../../widgets/common_text_form_field.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_drop_down.dart';

class RecieptScreen extends StatefulWidget {
  const RecieptScreen({super.key});

  @override
  State<RecieptScreen> createState() => _RecieptScreenState();
}

class _RecieptScreenState extends State<RecieptScreen> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _remController = TextEditingController();
  // TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: reciept,
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.primary,
                    size: const Size(96, 40),
                    child: Text(
                      newB,
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                CustomButton(
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.primary,
                    size: const Size(96, 40),
                    child: Text(
                      editB,
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                CustomButton(
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.primary,
                    size: const Size(96, 40),
                    child: Text(
                      reprintB,
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                number,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CustomDropDown(
                      items: const ['GS10', 'GS58', 'AS400', 'FT/100', 'NL32'],
                      hint: 'Select an Option',
                      onChanged: (value) {}),
                ),
                Expanded(
                    flex: 1,
                    child: CommonTextFormFiled(controller: _controller))
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  accountBook,
                  style: Theme.of(context).textTheme.bodySmall,
                )),
            CommonTextFormFiled(controller: _remController),
            Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  accountHead,
                  style: Theme.of(context).textTheme.bodySmall,
                )),
            TextFormField(
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
            Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  narration,
                  style: Theme.of(context).textTheme.bodySmall,
                )),
            CommonTextFormFiled(controller: _remController),
            Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall,
                )),
            CommonTextFormFiled(controller: _remController),
            Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  costCenter,
                  style: Theme.of(context).textTheme.bodySmall,
                )),
            CustomDropDown(items: const [
              'CC 007',
              'CC x3',
              'CC 34',
              'CC 0.o',
              'CC A01',
              'CC XX'
            ], hint: 'CC XX', onChanged: (value) {}),
            Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  salesMan,
                  style: Theme.of(context).textTheme.bodySmall,
                )),
            CustomDropDown(items: const [
              'Akshay',
              'Jimmy',
              'Joseph',
              'Rohan',
              'Karthik',
              'Salam'
            ], hint: 'Jimmy', onChanged: (value) {}),
            Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  area,
                  style: Theme.of(context).textTheme.bodySmall,
                )),
            CustomDropDown(items: const [
              'QS 009',
              'SFC 0',
              'NAS x0',
              'KP 90',
              'A 009',
              'SDF 0'
            ], hint: 'SDF 0', onChanged: (value) {}),
          ],
        ),
      ),
    );
  }
}
