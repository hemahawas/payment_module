import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_module/core/widgets/custom_appbar.dart';
import 'package:payment_module/data/models/card_model.dart';
import 'package:payment_module/modules/home/controller/home_contoller.dart';
import 'package:payment_module/modules/new_card/controller/new_card_controller.dart';
import 'package:payment_module/modules/new_card/views/widgets/card_number_field.dart';
import 'package:payment_module/modules/new_card/views/widgets/expiry_and_cvv_fields.dart';
import 'package:payment_module/modules/new_card/views/widgets/name_field.dart';
import 'package:payment_module/modules/new_card/views/widgets/payment_card.dart';
import 'package:payment_module/modules/new_card/views/widgets/save_card.dart';

class NewCardBody extends StatelessWidget {
  const NewCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppbar(
            text: 'Add Card',
            onPressed: () {
              Get.close(1);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              spacing: 15,
              children: [
                PaymentCard(),
                NameField(),
                CardNumberField(),
                ExpiryAndCvvFields(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: SaveCard(
                    onPressed: () {
                      var controller = Get.find<NewCardController>();
                      var model = CardModel(
                        type: 'CARD',
                        cardNumber: controller.cardNumber.value,
                        cardHolderName: controller.cardHolderName.value,
                        expiryDate: controller.expiryDate.value,
                        cvv: controller.cvv.value,
                        isSelected: false,
                      );
                      Get.find<NewCardController>().saveCard(model);
                      Get.find<HomeController>().addCard(model);
                      Get.back();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
