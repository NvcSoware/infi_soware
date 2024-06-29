import 'package:flutter/material.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'DATE',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextFormField(
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
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
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
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'A/C Ledger',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  )),
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text(
                      'Credit Limit :',
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Credit Days :',
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (onChanged) {}),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Text('Exclude Opening',
                      style: Theme.of(context).textTheme.bodySmall),
                )
              ],
            ),
            CustomDropDown(items: [
              'CC XX',
              'CC 002',
              'CC 345',
            ], hint: 'CC XX', onChanged: (onChanged) {}),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Radio(value: false, groupValue: 2, onChanged: (onChanged) {}),
                  Text(
                    'No Reconciliation',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Radio(value: true, groupValue: 0, onChanged: (onChanged) {}),
                  Text(
                    'Reconciliation',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Radio(value: false, groupValue: 1, onChanged: (onChanged) {}),
                  Expanded(
                    child: Text(
                      'Entry Date',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Radio(value: false, groupValue: 2, onChanged: (onChanged) {}),
                  Text(
                    'Approved',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Radio(value: true, groupValue: 0, onChanged: (onChanged) {}),
                  Text(
                    'Pending',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Radio(value: false, groupValue: 1, onChanged: (onChanged) {}),
                  Text(
                    'All',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(
                    'Month Wise',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Checkbox(value: false, onChanged: (value) {}),
                  Text(
                    'Consolidate Date',
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
