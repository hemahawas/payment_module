import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_module/core/widgets/custom_button.dart';
import 'package:payment_module/data/models/card_model.dart';
import 'package:payment_module/modules/home/controller/home_contoller.dart';
import 'package:payment_module/modules/new_card/controller/new_card_controller.dart';

class SaveCard extends StatelessWidget {
  const SaveCard({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      isLoading: false,
      text: 'Save Card',
      onPressed: onPressed,
    );
  }
}
