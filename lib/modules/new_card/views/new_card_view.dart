import 'package:flutter/material.dart';
import 'package:payment_module/modules/new_card/views/widgets/new_card_body.dart';

class NewCardView extends StatelessWidget {
  const NewCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: NewCardBody()));
  }
}
