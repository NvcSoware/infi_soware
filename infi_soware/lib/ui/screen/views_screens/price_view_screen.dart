import 'package:flutter/material.dart';
import 'package:infi_soware/constants.dart';
import 'package:infi_soware/ui/widgets/custom_appbar.dart';

class PriceViewScreen extends StatelessWidget {
  const PriceViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: priceView),
      body: Container(
        margin: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                color: Theme.of(context).colorScheme.onPrimary,
                height: 48,
                width: 64,
                child: const Text('GO +'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                color: Theme.of(context).colorScheme.onSecondary,
                height: 48,
                width: 64,
                child: const Text('Lookup'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
