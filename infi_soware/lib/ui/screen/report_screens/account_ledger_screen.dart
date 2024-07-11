import 'package:flutter/material.dart';
import 'package:infi_soware/constants.dart';
import 'package:infi_soware/ui/widgets/common_text.dart';
import 'package:infi_soware/ui/widgets/custom_appbar.dart';
import 'package:infi_soware/ui/widgets/custom_date_field.dart';
import 'package:infi_soware/ui/widgets/custom_drop_down.dart';
import 'package:intl/intl.dart';

class AccountLedgerScreen extends StatefulWidget {
  final String label;
  final Function(DateTime) onDateSelected;
  const AccountLedgerScreen(
      {super.key, required this.label, required this.onDateSelected});

  @override
  State<AccountLedgerScreen> createState() => _AccountLedgerScreenState();
}

class _AccountLedgerScreenState extends State<AccountLedgerScreen> {
  TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: accountLedger),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            const CommonText(text: search),
            const CommonText(text: date),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CustomDateField(
                    controller: _dateController,
                    labelText: widget.label,
                    onTap: () {
                      _selectDate(context);
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  flex: 1,
                  child: CustomDateField(
                    controller: _dateController,
                    labelText: widget.label,
                    onTap: () {
                      _selectDate(context);
                    },
                  ),
                ),
              ],
            ),
            const CommonText(text: accountLedger),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  )),
            ),
            const Row(
              children: [
                Expanded(
                    flex: 1,
                    child: CommonText(
                      text: creditLimit,
                    )),
                Expanded(
                    flex: 1,
                    child: CommonText(
                      text: creditDays,
                    )),
              ],
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (onChanged) {}),
                const CommonText(text: excludeOpening),
              ],
            ),
            CustomDropDown(items: const [
              'CC XX',
              'CC 002',
              'CC 345',
            ], hint: 'CC XX', onChanged: (onChanged) {}),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Row(
                children: [
                  Radio(value: false, groupValue: 2, onChanged: (onChanged) {}),
                  Text(
                    noReconciliation,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Radio(value: true, groupValue: 0, onChanged: (onChanged) {}),
                  Text(
                    noReconciliation,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Radio(value: false, groupValue: 1, onChanged: (onChanged) {}),
                  Expanded(
                    child: Text(
                      entryDate,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Row(
                children: [
                  Radio(value: false, groupValue: 2, onChanged: (onChanged) {}),
                  Text(
                    approved,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Radio(value: true, groupValue: 0, onChanged: (onChanged) {}),
                  Text(
                    pending,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Radio(value: false, groupValue: 1, onChanged: (onChanged) {}),
                  Text(
                    all,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(
                    monthWise,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Checkbox(value: false, onChanged: (value) {}),
                  Text(
                    consolidateDate,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            )
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
}
