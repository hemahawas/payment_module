import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_module/core/constants/app_images.dart';
import 'package:payment_module/modules/new_card/views/widgets/card_details.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 13 / 9,
      child: Stack(
        children: [SvgPicture.asset(Assets.imagesCardInfo), CardDetails()],
      ),
    );
  }
}
