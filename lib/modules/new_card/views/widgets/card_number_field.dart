import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:payment_module/core/utils/card_number_formatter.dart';
import 'package:payment_module/core/widgets/custom_text_form_field.dart';
import 'package:payment_module/modules/new_card/controller/new_card_controller.dart';

class CardNumberField extends StatelessWidget {
  const CardNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(11),
        CardNumberFormatter(),
      ],
      keyboardType: TextInputType.number,
      label: 'Card Number',
      validator: (value) {
        if (value != null && value.isNotEmpty) {
          if (value.length != 11) {
            return 'Card number length is invalid';
          }
        }
        return null;
      },
      hintText: '### ### ### ##',
      onchanged: (value) {
        Get.find<NewCardController>().saveCardNumber(value.toString());
        return null;
      },
    );
  }
}
