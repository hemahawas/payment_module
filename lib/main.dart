import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_module/firebase_options.dart';
import 'package:payment_module/modules/home/bindings/home_binding.dart';
import 'package:payment_module/modules/home/views/home_view.dart';
import 'package:payment_module/modules/new_card/binding/new_card_binding.dart';
import 'package:payment_module/modules/new_card/views/new_card_view.dart';
import 'package:payment_module/routes/routes.dart' show Routes;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: Routes.home, page: () => HomeView()),
        GetPage(
          name: Routes.newCard,
          page: () => NewCardView(),
          binding: NewCardBinding(),
        ),
      ],
      initialBinding: HomeBindings(),
    );
  }
}
