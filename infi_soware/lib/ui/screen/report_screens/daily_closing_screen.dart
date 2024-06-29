import 'package:flutter/material.dart';
import 'package:infi_soware/ui/widgets/custom_drop_down.dart';
import 'package:intl/intl.dart';

class DailyClosingScreen extends StatefulWidget {
  final String label;
  final Function(DateTime) onDateSelected;
  DailyClosingScreen(
      {super.key, required this.label, required this.onDateSelected});

  @override
  State<DailyClosingScreen> createState() => _DailyClosingScreenState();
}

class _DailyClosingScreenState extends State<DailyClosingScreen> {
  TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
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
              padding: const EdgeInsets.only(top: 12.0, bottom: 12),
              child: Text(
                'Group Type',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            CustomDropDown(
                items: ['Group 32', 'Group 14', 'Test Group xx', 'Testing 234'],
                hint: 'Group 32',
                onChanged: (onChanged) {}),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  )),
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
