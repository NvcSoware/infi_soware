import 'package:flutter/material.dart';
import 'package:infi_soware/ui/widgets/common_text.dart';
import 'package:infi_soware/ui/widgets/custom_appbar.dart';
import 'package:infi_soware/ui/widgets/custom_date_field.dart';
import 'package:infi_soware/ui/widgets/custom_drop_down.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';

class InvoiceReportScreen extends StatefulWidget {
  final String label;
  final Function(DateTime) onDateSelected;
  InvoiceReportScreen(
      {super.key, required this.label, required this.onDateSelected});

  @override
  State<InvoiceReportScreen> createState() => _InvoiceReportScreenState();
}

class _InvoiceReportScreenState extends State<InvoiceReportScreen> {
  TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: invoiceReport),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonText(text: search),
            const CommonText(text: transactionType),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: CustomDropDown(items: const [
                'Purchase',
                'Sale',
                'Purchase Order',
                'Sales Order',
                'Sales Return',
                'Purchase Return',
                'Stock Transfer In',
                'Stcok Transfer Out',
                'Physical Stock',
                'Damage Stock',
                'Stock Adjust',
                'Quotation',
                'Production - Production',
                'Production Consumption',
                'Delivery Challan',
                'Goods Recieved Note',
                'Packing',
                'Packing Consumption'
              ], hint: 'Sales Order', onChanged: (onChanged) {}),
            ),
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
