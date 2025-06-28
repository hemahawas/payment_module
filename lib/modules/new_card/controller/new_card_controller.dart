import 'package:get/get.dart';
import 'package:payment_module/data/models/card_model.dart';
import 'package:payment_module/data/repo/card_repository.dart';
import 'package:payment_module/modules/home/controller/home_contoller.dart';

class NewCardController extends GetxController {
  final CardRepository cardRepository;
  NewCardController({required this.cardRepository});
  final cardNumber = '### ### ### ##'.obs;
  final cardHolderName = 'Your Name'.obs;
  final expiryDate = 'MM/YY'.obs;
  final cvv = ''.obs;

  void saveHolderName(name) {
    cardHolderName.value = name;
  }

  void saveCardNumber(number) {
    cardNumber.value = number;
  }

  void saveExpiryDate(number) {
    expiryDate.value = number;
  }

  void saveCvv(number) {
    cvv.value = number;
  }

  Future<void> saveCard(card) async {
    await cardRepository.saveCard(card);
  }
}
