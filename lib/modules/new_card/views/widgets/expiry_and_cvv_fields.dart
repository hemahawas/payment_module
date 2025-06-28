import 'package:flutter/material.dart';
import 'package:payment_module/modules/new_card/views/widgets/cvv_field.dart';
import 'package:payment_module/modules/new_card/views/widgets/expiry_field.dart';

class ExpiryAndCvvFields extends StatelessWidget {
  const ExpiryAndCvvFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: ExpiryField()),
        Expanded(child: SizedBox()),
        Expanded(child: CvvField()),
        SizedBox(width: 50),
      ],
    );
  }
}
