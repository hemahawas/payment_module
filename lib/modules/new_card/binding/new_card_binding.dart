import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:payment_module/data/repo/card_repository.dart';
import 'package:payment_module/modules/new_card/controller/new_card_controller.dart';

class NewCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewCardController(cardRepository: Get.find()));
    Get.lazyPut<CardRepository>(
      () => CardRepository(firebaseFirestore: Get.find()),
    );
    Get.lazyPut<FirebaseFirestore>(() => FirebaseFirestore.instance);
  }
}
