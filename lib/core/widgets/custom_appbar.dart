import 'package:flutter/material.dart';
import 'package:payment_module/core/constants/styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.text, this.onPressed});
  final String text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Stack(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(text, style: Styles.stylesSemiBold24)],
          ),
        ],
      ),
    );
  }
}
