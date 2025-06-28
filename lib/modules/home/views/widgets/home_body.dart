import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:payment_module/core/widgets/custom_appbar.dart';
import 'package:payment_module/core/widgets/custom_button.dart';
import 'package:payment_module/modules/home/views/widgets/payment_methods.dart';
import 'package:payment_module/routes/routes.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(text: 'Payment Method'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: PaymentMethods(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0, left: 30, right: 30),
          child: CustomButton(
            text: 'Add New Card',
            isLoading: false,
            onPressed: () {
              Get.toNamed(Routes.newCard);
            },
          ),
        ),
      ],
    );
  }
}
