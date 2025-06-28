import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payment_module/core/widgets/custom_text_form_field.dart';

class CvvField extends StatelessWidget {
  const CvvField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: '0000',
      label: 'CVV',
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(4),
      ],
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter CVV';
        }
        return null;
      },
    );
  }
}
