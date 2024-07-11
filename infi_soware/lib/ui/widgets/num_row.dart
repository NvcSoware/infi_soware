import 'package:flutter/material.dart';

import 'common_text_form_field.dart';
import 'custom_drop_down.dart';

class NumRow extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: CustomDropDown(
                items: const ['GS10', 'GS58', 'AS400', 'FT/100', 'NL32'],
                hint: 'Select an Option',
                onChanged: (value) {})),
        Expanded(flex: 1, child: CommonTextFormFiled(controller: _controller))
      ],
    );
  }
}
