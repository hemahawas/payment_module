import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:payment_module/core/widgets/custom_appbar.dart';
import 'package:payment_module/core/widgets/custom_button.dart';
import 'package:payment_module/modules/home/views/widgets/payment_methods.dart';
import 'package:payment_module/routes/routes.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(text: 'Payment Method'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: PaymentMethods(scrollController: scrollController),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0, left: 30, right: 30),
          child: CustomButton(
            text: 'Add New Card',
            isLoading: false,
            onPressed: () {
              scrollController.animateTo(
                scrollController.position.minScrollExtent,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              Get.toNamed(Routes.newCard);
            },
          ),
        ),
      ],
    );
  }
}
