import 'package:flutter/material.dart';
import 'package:infi_soware/constants.dart';
import 'package:infi_soware/ui/widgets/custom_appbar.dart';

class PriceCheckerScreen extends StatelessWidget {
  const PriceCheckerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: priceChecker,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 12, right: 12, top: 12),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
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
                child: const Text(goPlus),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                color: Theme.of(context).colorScheme.onSecondary,
                height: 48,
                width: 64,
                child: const Text(lookup),
              ),
            )
          ],
        ),
      ),
    );
  }
}
