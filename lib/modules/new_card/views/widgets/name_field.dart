import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_module/core/widgets/custom_text_form_field.dart';
import 'package:payment_module/modules/new_card/controller/new_card_controller.dart';

class NameField extends StatelessWidget {
  const NameField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'Your Name',
      keyboardType: TextInputType.text,
      label: 'Card Holder Name',
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your name';
        } else if (value.length < 5 || value.length > 25) {
          return 'Name length is invalid';
        }
        return null;
      },
      onchanged: (value) {
        Get.find<NewCardController>().cardHolderName(value.toString());
        return null;
      },
    );
  }
}
