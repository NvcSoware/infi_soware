import 'package:flutter/material.dart';
import 'package:infi_soware/constants.dart';
import 'package:infi_soware/ui/widgets/btn_row.dart';
import 'package:infi_soware/ui/widgets/common_text.dart';
import 'package:infi_soware/ui/widgets/common_text_form_field.dart';
import 'package:infi_soware/ui/widgets/custom_appbar.dart';
import 'package:infi_soware/ui/widgets/custom_button.dart';
import 'package:infi_soware/ui/widgets/custom_date_field.dart';
import 'package:intl/intl.dart';

import '../../widgets/custom_drop_down.dart';

class PhysicalStockScreen extends StatefulWidget {
  final String label;
  final Function(DateTime) onDateSelected;
  const PhysicalStockScreen(
      {super.key, required this.label, required this.onDateSelected});

  @override
  State<PhysicalStockScreen> createState() => _PhysicalStockScreenState();
}

class _PhysicalStockScreenState extends State<PhysicalStockScreen> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _remController = TextEditingController();

  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: physicalStock),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            const BtnRow(),
            const CommonText(text: number),
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
            const CommonText(text: date),
            CustomDateField(
              controller: _dateController,
              labelText: widget.label,
              onTap: () {
                _selectDate(context);
              },
            ),
            const CommonText(text: payment),
            CustomDropDown(
                items: const ['CASH', 'CREDIT', 'CARD'],
                hint: 'CASH',
                onChanged: (value) {}),
            const CommonText(text: rem01),
            CommonTextFormFiled(controller: _remController),
            const CommonText(
              text: supplier,
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
            const CommonText(text: billingAddress),
            CommonTextFormFiled(controller: _remController),
            const CommonText(text: deliveryAddress),
            CommonTextFormFiled(controller: _remController),
            const CommonText(text: phone),
            CommonTextFormFiled(controller: _remController),
            const CommonText(text: priceType),
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
            const CommonText(text: phone),
            CommonTextFormFiled(controller: _remController),
            const CommonText(text: stockPoint),
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
            const CommonText(text: area),
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
            const CommonText(text: docNumber),
            CommonTextFormFiled(controller: _remController),
            const CommonText(text: docDate),
            CustomDateField(
              controller: _dateController,
              labelText: widget.label,
              onTap: () {
                _selectDate(context);
              },
            ),
            const CommonText(text: docAmount),
            CommonTextFormFiled(controller: _remController),
          ],
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
              const CommonText(text: ledgerCode),
              CommonTextFormFiled(controller: _ledgerCodeController),
              const CommonText(text: ledgerName),
              CommonTextFormFiled(controller: _ledgerNameController),
              const CommonText(text: accStatus),
              CommonTextFormFiled(controller: _accStatusController),
              const CommonText(text: remarks),
              CommonTextFormFiled(controller: _remarksController),
              const CommonText(text: address),
              const CommonText(text: address01),
              CommonTextFormFiled(
                controller: _add01Controller,
              ),
              const CommonText(text: address02),
              CommonTextFormFiled(
                controller: _add02Controller,
              ),
              const CommonText(text: place),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              const CommonText(text: phone),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              const SizedBox(
                height: 5,
              ),
              const CommonText(text: bankDetails),
              const CommonText(text: accName),
              CommonTextFormFiled(
                controller: _add01Controller,
              ),
              const CommonText(text: accNumber),
              CommonTextFormFiled(
                controller: _add02Controller,
              ),
              const CommonText(text: accType),
              CustomDropDown(items: const [
                'Current Account',
                'Saving Account',
                'Overdraft Account',
                'Occ Account',
                'Loan Account'
              ], hint: 'Current Account', onChanged: (value) {}),
              const CommonText(text: bankName),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              const CommonText(text: branchName),
              CommonTextFormFiled(
                controller: _add03Controller,
              ),
              const CommonText(text: ifscCode),
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
              const CommonText(text: gst),
              const CommonText(text: gstNumber),
              CommonTextFormFiled(
                controller: _add01Controller,
              ),
              const CommonText(text: panNumber),
              CommonTextFormFiled(
                controller: _add02Controller,
              ),
              const CommonText(text: state),
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
