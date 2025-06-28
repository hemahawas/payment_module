import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_module/core/constants/app_colors.dart';
import 'package:payment_module/modules/home/controller/home_contoller.dart';
import 'package:payment_module/modules/home/views/widgets/payment_method_item.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Obx(
      () =>
          controller.isLoading.value
              ? CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverList.builder(
                    itemCount: controller.cards.length,
                    itemBuilder:
                        (context, index) => Column(
                          children: [
                            if (index != 0)
                              const Divider(color: AppColors.salmon),
                            Obx(
                              () => PaymentMethodItem(
                                onDotPressed: () {
                                  controller.select(index);
                                },
                                model: controller.cards[index].value,
                                isSelected:
                                    controller.cardSelection[index].value,
                              ),
                            ),
                          ],
                        ),
                  ),
                ],
              )
              : const SizedBox(),
    );
  }
}
