import 'package:flutter/material.dart';
import 'package:payment_module/core/constants/app_colors.dart';

abstract class Styles {
  Styles._();
  /*
  * Light     300
  * Regular   400
  * Medium    500
  * SemiBold  600
  * Bold      700
*/

  static const TextStyle stylesSemiBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.salmon,
  );

  static const TextStyle stylesBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.darkOrange,
  );
}
