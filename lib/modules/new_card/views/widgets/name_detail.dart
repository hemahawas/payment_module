import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_module/core/constants/app_colors.dart';
import 'package:payment_module/modules/new_card/controller/new_card_controller.dart';

class NameDetail extends StatelessWidget {
  const NameDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Card Holder name',
          style: TextStyle(color: AppColors.darkOrange, fontSize: 12),
        ),

        SizedBox(height: 5),
        GetX(
          init: Get.find<NewCardController>(),
          builder:
              (controller) => Text(
                controller.cardHolderName.value,
                style: TextStyle(
                  color: AppColors.terracotta,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
        ),
      ],
    );
  }
}
