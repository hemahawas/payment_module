import 'package:flutter/material.dart';
import 'package:payment_module/core/constants/app_images.dart';
import 'package:payment_module/core/constants/styles.dart';
import 'package:payment_module/data/models/card_model.dart';
import 'package:payment_module/modules/home/views/widgets/dot.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.model,
    required this.onDotPressed,
    required this.isSelected,
  });
  final CardModel model;
  final bool isSelected;
  final VoidCallback onDotPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(_getImage(model.type), width: 40, height: 40),
        SizedBox(width: 15),
        Text(
          model.type == 'CARD'
              ? model.cardNumber.replaceRange(0, 11, '*** *** *** ')
              : model.cardHolderName,
          style: Styles.stylesBold16,
        ),
        Spacer(),
        MaterialButton(
          highlightElevation: 0,
          elevation: 0,
          minWidth: 30,
          onPressed: onDotPressed,
          child: Dot(isSelected: isSelected),
        ),
      ],
    );
  }

  _getImage(String type) {
    switch (type) {
      case 'CARD':
        return Assets.imagesCard;
      case 'CASH':
        return Assets.imagesDollar;
      case 'APPLE':
        return Assets.imagesApple;
      case 'PAYPAL':
        return Assets.imagesPaypal;
      default:
    }
  }
}
