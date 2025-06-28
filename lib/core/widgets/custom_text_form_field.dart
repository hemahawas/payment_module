import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payment_module/core/constants/app_colors.dart';
import 'package:payment_module/core/constants/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.inputFormatters,
    this.keyboardType,
    this.validator,
    required this.label,
    this.hintText,
    this.onchanged,
    this.controller,
  });
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? Function(String?)? onchanged;
  final String label;
  final String? hintText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Styles.stylesBold16.copyWith(color: AppColors.terracotta),
        ),
        TextFormField(
          controller: controller,
          validator: validator,
          cursorColor: AppColors.terracotta,
          inputFormatters: inputFormatters,
          textInputAction: TextInputAction.next,
          keyboardType: keyboardType,
          style: TextStyle(color: AppColors.darkOrange),
          onChanged: onchanged,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),

            fillColor: AppColors.beige,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
