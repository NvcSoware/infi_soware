import 'package:flutter/material.dart';

import '../../constants.dart';
import 'custom_button.dart';

class BtnRow extends StatelessWidget {
  const BtnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
