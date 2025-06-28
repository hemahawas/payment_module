import 'package:flutter/material.dart';
import 'package:payment_module/core/constants/app_colors.dart';

class Dot extends StatelessWidget {
  const Dot({super.key, this.isSelected = false});
  final bool? isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.salmon, width: 1),
        shape: BoxShape.circle,
      ),
      child:
          isSelected == true
              ? Container(
                margin: EdgeInsets.all(2),
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: AppColors.salmon,
                  shape: BoxShape.circle,
                ),
              )
              : Container(
                margin: EdgeInsets.all(2),
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.salmon, width: 1),
                  shape: BoxShape.circle,
                ),
              ),
    );
  }
}
