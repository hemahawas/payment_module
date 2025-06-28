import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_module/core/constants/app_colors.dart';
import 'package:payment_module/modules/new_card/controller/new_card_controller.dart';

class ExpiryDetail extends StatelessWidget {
  const ExpiryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Expiry date',
          style: TextStyle(color: AppColors.darkOrange, fontSize: 12),
        ),

        SizedBox(height: 5),
        GetX(
          init: Get.find<NewCardController>(),
          builder:
              (controller) => Text(
                controller.expiryDate.value,
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
