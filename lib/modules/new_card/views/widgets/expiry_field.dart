import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:payment_module/core/utils/expiry_formatter.dart';
import 'package:payment_module/core/widgets/custom_text_form_field.dart';
import 'package:payment_module/modules/new_card/controller/new_card_controller.dart';

class ExpiryField extends StatelessWidget {
  ExpiryField({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      label: 'Expiry Date',
      hintText: 'MM/YY',
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(4),
        ExpiryFormatter(),
      ],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter expiry date';
        }
        return null;
      },
      onchanged: (value) {
        Get.find<NewCardController>().saveExpiryDate(value.toString());
        return null;
      },
    );
  }
}
