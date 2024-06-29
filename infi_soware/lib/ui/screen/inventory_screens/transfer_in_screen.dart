import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infi_soware/ui/utils/drop_down_items.dart';
import 'package:infi_soware/ui/widgets/common_text_form_field.dart';
import 'package:infi_soware/ui/widgets/custom_button.dart';
import 'package:infi_soware/ui/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';

import '../../widgets/custom_drop_down.dart';

class TransferInScreen extends StatefulWidget {
  final String label;
  final Function(DateTime) onDateSelected;
  const TransferInScreen(
      {super.key, required this.label, required this.onDateSelected});

  @override
  State<TransferInScreen> createState() => _TransferInScreenState();
}

class _TransferInScreenState extends State<TransferInScreen> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _remController = TextEditingController();

  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
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
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'DATE',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              TextFormField(
                controller: _dateController,
                decoration: InputDecoration(
                  labelText: widget.label,
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                readOnly: true,
                onTap: () {
                  _selectDate(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'PAYMENT',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              CustomDropDown(
                  items: ['CASH', 'CREDIT', 'CARD'],
                  hint: 'CASH',
                  onChanged: (value) {}),
              Padding(
                  child: Text(
                    'REM 01',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  padding: EdgeInsets.all(12)),
              CommonTextFormFiled(controller: _remController),
              Text(
                'Supplier ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: IconButton(
                        onPressed: () {
                          _showPopup(context);
                        },
                        icon: Icon(Icons.add)),
                    suffixIcon: Icon(Icons.search)),
              ),
              Padding(
                  child: Text(
                    'Billing Address',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  padding: EdgeInsets.all(12)),
              CommonTextFormFiled(controller: _remController),
              Padding(
                  child: Text(
                    'Delivery Address',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  padding: EdgeInsets.all(12)),
              CommonTextFormFiled(controller: _remController),
              Padding(
                  child: Text(
                    'Phone',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  padding: EdgeInsets.all(12)),
              CommonTextFormFiled(controller: _remController),
              Padding(
                  child: Text(
                    'Price Type',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  padding: EdgeInsets.all(12)),
              CustomDropDown(items: [
                'Consumer Card Price',
                'Purchase Price',
                'Purchase Cost',
                'Wholesale Price',
                'Branch Price',
                'Average Cost',
                'Min Operating Price',
                'Max Retail Price',
              ], hint: 'Margin Free Price', onChanged: (value) {}),
              Padding(
                  child: Text(
                    'Phone',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  padding: EdgeInsets.all(12)),
              CommonTextFormFiled(controller: _remController),
              Padding(
                  child: Text(
                    'Stock Point',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  padding: EdgeInsets.all(12)),
              CustomDropDown(items: [
                'Godown 001',
                'Godown x32',
                'Godown ybh',
                'Godown 754',
                'Godown xx',
                'Godown az',
                'Godown xq',
                'Godown gd',
              ], hint: '--Select--', onChanged: (value) {}),
              Padding(
                  child: Text(
                    'Area',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  padding: EdgeInsets.all(12)),
              CustomDropDown(items: [
                'Table 001',
                'Table x32',
                'Table ybh',
                'Table 754',
                'Table xx',
                'Table az',
                'Table xq',
                'Table gd',
              ], hint: '--Select--', onChanged: (value) {}),
              Padding(
                  child: Text(
                    'Doc Number',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  padding: EdgeInsets.all(12)),
              CommonTextFormFiled(controller: _remController),
              Padding(
                  child: Text(
                    'Doc Date',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  padding: EdgeInsets.all(12)),
              TextFormField(
                controller: _dateController,
                decoration: InputDecoration(
                  labelText: widget.label,
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                readOnly: true,
                onTap: () {
                  _selectDate(context);
                },
              ),
              Padding(
                  child: Text(
                    'Doc Amount',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  padding: EdgeInsets.all(12)),
              CommonTextFormFiled(controller: _remController),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        initialDate: _selectedDate ?? DateTime.now(),
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2050));
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('yyyy-mm-dd').format(_selectedDate!);
        widget.onDateSelected(_selectedDate!);
      });
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}

void _showPopup(BuildContext context) {
  TextEditingController _ledgerCodeController = TextEditingController();
  TextEditingController _ledgerNameController = TextEditingController();
  TextEditingController _accStatusController = TextEditingController();
  TextEditingController _remarksController = TextEditingController();
  TextEditingController _add01Controller = TextEditingController();
  TextEditingController _add02Controller = TextEditingController();
  TextEditingController _add03Controller = TextEditingController();
  TextEditingController _add04Controller = TextEditingController();
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'SUNDRY DEBTORS - ENTRY',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          content: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'LEDGER CODE',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              CommonTextFormFiled(controller: _ledgerCodeController),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'LEDGER NAME',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              CommonTextFormFiled(controller: _ledgerNameController),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'ACC STATUS',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              CommonTextFormFiled(controller: _accStatusController),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'REMARKS',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              CommonTextFormFiled(controller: _remarksController),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'ADDRESS',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Address 01',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add01Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Address 02',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add02Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Place',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Phone',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'BANK DETAILS',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Account Name',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add01Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Account Number',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add02Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Account Type',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CustomDropDown(items: [
                'Current Account',
                'Saving Account',
                'Overdraft Account',
                'Occ Account',
                'Loan Account'
              ], hint: 'Current Account', onChanged: (value) {}),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Bank Name',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Branch Name',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Ifsc Code',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (onChanged) {}),
                  Text(
                    'REQUIRE BILL WISE \n PAYMENT',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'GST',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Gst Number',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add01Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Pan Number',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add02Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'State',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CustomDropDown(items: [
                'Kerala',
                'Tamilnadu',
                'Karnataka',
                'Telugana',
                'Andra Pradesh'
              ], hint: 'Kerala', onChanged: (value) {}),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                    onPressed: () {},
                    child: Text(
                      'SAVE',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    color: Theme.of(context).colorScheme.onPrimary,
                    size: Size(96, 40)),
                CustomButton(
                    onPressed: () {},
                    child: Text('CLOSE'),
                    color: Theme.of(context).colorScheme.onSecondary,
                    size: Size(96, 40)),
              ],
            )
          ],
        );
      });
}
