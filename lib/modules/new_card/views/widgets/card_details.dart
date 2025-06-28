import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_module/core/constants/styles.dart';
import 'package:payment_module/modules/new_card/controller/new_card_controller.dart';
import 'package:payment_module/modules/new_card/views/widgets/expiry_detail.dart';
import 'package:payment_module/modules/new_card/views/widgets/name_detail.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 140.0, left: 50),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GetX(
            init: Get.find<NewCardController>(),
            builder:
                (controller) => Text(
                  controller.cardNumber.value,
                  style: Styles.stylesBold16,
                ),
          ),
          SizedBox(height: 10),
          Row(children: [NameDetail(), SizedBox(width: 50), ExpiryDetail()]),
        ],
      ),
    );
  }
}
