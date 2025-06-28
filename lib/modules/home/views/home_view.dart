import 'package:flutter/material.dart';
import 'package:payment_module/modules/home/views/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: HomeBody()));
  }
}
