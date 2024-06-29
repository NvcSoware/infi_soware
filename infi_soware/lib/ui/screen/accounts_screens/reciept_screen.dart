import 'package:flutter/material.dart';

import '../../widgets/common_text_form_field.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_drop_down.dart';

class RecieptScreen extends StatefulWidget {
  const RecieptScreen({super.key});

  @override
  State<RecieptScreen> createState() => _RecieptScreenState();
}

class _RecieptScreenState extends State<RecieptScreen> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _remController = TextEditingController();
  // TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(12),
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
                      'NEW',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                CustomButton(
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.primary,
                    size: const Size(96, 40),
                    child: Text(
                      'EDIT',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                CustomButton(
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.primary,
                    size: const Size(96, 40),
                    child: Text(
                      'REPRINT',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'NUMBER',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CustomDropDown(
                      items: ['GS10', 'GS58', 'AS400', 'FT/100', 'NL32'],
                      hint: 'Select an Option',
                      onChanged: (value) {}),
                ),
                Expanded(
                    flex: 1,
                    child: CommonTextFormFiled(controller: _controller))
              ],
            ),
            Padding(
                child: Text(
                  'Acc Book',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                padding: EdgeInsets.all(12)),
            CommonTextFormFiled(controller: _remController),
            Padding(
                child: Text(
                  'Acc Head',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                padding: EdgeInsets.all(12)),
            TextFormField(
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
            Padding(
                child: Text(
                  'Narration',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                padding: EdgeInsets.all(12)),
            CommonTextFormFiled(controller: _remController),
            Padding(
                child: Text(
                  'Description',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                padding: EdgeInsets.all(12)),
            CommonTextFormFiled(controller: _remController),
            Padding(
                child: Text(
                  'Cost Center',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                padding: EdgeInsets.all(12)),
            CustomDropDown(items: [
              'CC 007',
              'CC x3',
              'CC 34',
              'CC 0.o',
              'CC A01',
              'CC XX'
            ], hint: 'CC XX', onChanged: (value) {}),
            Padding(
                child: Text(
                  'Sales Man',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                padding: EdgeInsets.all(12)),
            CustomDropDown(items: [
              'Akshay',
              'Jimmy',
              'Joseph',
              'Rohan',
              'Karthik',
              'Salam'
            ], hint: 'Jimmy', onChanged: (value) {}),
            Padding(
                child: Text(
                  'Area',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                padding: EdgeInsets.all(12)),
            CustomDropDown(
                items: ['QS 009', 'SFC 0', 'NAS x0', 'KP 90', 'A 009', 'SDF 0'],
                hint: 'SDF 0',
                onChanged: (value) {}),
          ],
        ),
      ),
    );
  }
}
