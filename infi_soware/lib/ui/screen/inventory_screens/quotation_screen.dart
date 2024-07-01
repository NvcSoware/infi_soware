import 'package:flutter/material.dart';
import 'package:infi_soware/constants.dart';
import 'package:infi_soware/ui/widgets/common_text_form_field.dart';
import 'package:infi_soware/ui/widgets/custom_button.dart';
import 'package:intl/intl.dart';

import '../../widgets/custom_drop_down.dart';

class QuotationScreen extends StatefulWidget {
  final String label;
  final Function(DateTime) onDateSelected;
  const QuotationScreen(
      {super.key, required this.label, required this.onDateSelected});

  @override
  State<QuotationScreen> createState() => _QuotationScreenState();
}

class _QuotationScreenState extends State<QuotationScreen> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _remController = TextEditingController();

  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(quotation),
        ),
      ),
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
                    child: CustomDropDown(items: const [
                      'GS10',
                      'GS58',
                      'AS400',
                      'FT/100',
                      'NL32'
                    ], hint: 'Select an Option', onChanged: (value) {}),
                  ),
                  Expanded(
                      flex: 1,
                      child: CommonTextFormFiled(controller: _controller))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  date,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              TextFormField(
                controller: _dateController,
                decoration: InputDecoration(
                  labelText: widget.label,
                  suffixIcon: const Icon(Icons.calendar_today),
                ),
                readOnly: true,
                onTap: () {
                  _selectDate(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  payment,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              CustomDropDown(
                  items: const ['CASH', 'CREDIT', 'CARD'],
                  hint: 'CASH',
                  onChanged: (value) {}),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    rem01,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
              CommonTextFormFiled(controller: _remController),
              Text(
                supplier,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    prefixIcon: IconButton(
                        onPressed: () {
                          _showPopup(context);
                        },
                        icon: const Icon(Icons.add)),
                    suffixIcon: const Icon(Icons.search)),
              ),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    billingAddress,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
              CommonTextFormFiled(controller: _remController),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    deliveryAddress,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
              CommonTextFormFiled(controller: _remController),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    phone,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
              CommonTextFormFiled(controller: _remController),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    priceType,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
              CustomDropDown(items: const [
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
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    phone,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
              CommonTextFormFiled(controller: _remController),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    stockPoint,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
              CustomDropDown(items: const [
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
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    area,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
              CustomDropDown(items: const [
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
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    docNumber,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
              CommonTextFormFiled(controller: _remController),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    docDate,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
              TextFormField(
                controller: _dateController,
                decoration: InputDecoration(
                  labelText: widget.label,
                  suffixIcon: const Icon(Icons.calendar_today),
                ),
                readOnly: true,
                onTap: () {
                  _selectDate(context);
                },
              ),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    docAmount,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
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
                  ledgerCode,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              CommonTextFormFiled(controller: _ledgerCodeController),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ledgerName,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              CommonTextFormFiled(controller: _ledgerNameController),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  accStatus,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              CommonTextFormFiled(controller: _accStatusController),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  remarks,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              CommonTextFormFiled(controller: _remarksController),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  address,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  address01,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add01Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  address02,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add02Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  place,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  phone,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  bankDetails,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  accName,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add01Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  accNumber,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add02Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  accType,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CustomDropDown(items: const [
                'Current Account',
                'Saving Account',
                'Overdraft Account',
                'Occ Account',
                'Loan Account'
              ], hint: 'Current Account', onChanged: (value) {}),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  bankName,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  branchName,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  ifscCode,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (onChanged) {}),
                  Text(
                    requireBillwisePayment,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  gst,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  gstNumber,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add01Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  panNumber,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CommonTextFormFiled(
                controller: _add02Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  state,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              CustomDropDown(items: const [
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
                    color: Theme.of(context).colorScheme.onPrimary,
                    size: const Size(96, 40),
                    child: Text(
                      save,
                      style: Theme.of(context).textTheme.displayMedium,
                    )),
                CustomButton(
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.onSecondary,
                    size: const Size(96, 40),
                    child: const Text(close)),
              ],
            )
          ],
        );
      });
}
