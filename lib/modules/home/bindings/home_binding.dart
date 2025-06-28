import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:payment_module/data/repo/card_repository.dart';
import 'package:payment_module/modules/home/controller/home_contoller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseFirestore>(() => FirebaseFirestore.instance);
    Get.lazyPut<CardRepository>(
      () => CardRepository(firebaseFirestore: Get.find()),
    );
    Get.put(HomeController(cardRepository: Get.find()));
  }
}
