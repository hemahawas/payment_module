import 'package:get/get.dart';
import 'package:payment_module/data/models/card_model.dart';
import 'package:payment_module/data/repo/card_repository.dart';

class HomeController extends GetxController {
  CardRepository cardRepository;
  RxBool isLoading = false.obs;
  HomeController({required this.cardRepository});
  RxList<Rx<CardModel>> cards = <Rx<CardModel>>[].obs;
  late RxList cardSelection;
  Future<void> getCards() async {
    var repositoryCards = await cardRepository.getCards();
    cards.value = repositoryCards.map((card) => card.obs).toList();
    cards.add(
      CardModel(
        type: 'APPLE',
        cardNumber: 'Apple',
        cardHolderName: 'Apple',
        expiryDate: 'NA',
        cvv: 'NA',
        isSelected: false,
      ).obs,
    );
    cards.add(
      CardModel(
        type: 'PAYPAL',
        cardNumber: 'PayPal',
        cardHolderName: 'PayPal',
        expiryDate: 'NA',
        cvv: 'NA',
        isSelected: false,
      ).obs,
    );
    cards.add(
      CardModel(
        type: 'CASH',
        cardNumber: 'Cash',
        cardHolderName: 'Cash',
        expiryDate: 'NA',
        cvv: 'NA',
        isSelected: false,
      ).obs,
    );

    isLoading.value = true;
    cardSelection = List.generate(cards.length, (index) => false.obs).obs;
  }

  var newIndex = 0.obs;
  var oldIndex = 0.obs;
  void select(index) {
    // To avoid rebuilding all list
    cardSelection[oldIndex.value.toInt()].value = false;
    newIndex.value = index;
    cardSelection[newIndex.value.toInt()].value = true;
    oldIndex.value = newIndex.value;
  }

  void addCard(CardModel card) {
    cards.insert(0, card.obs);
    cardSelection.insert(0, false.obs);
    oldIndex.value = oldIndex.value + 1;
  }

  @override
  void onInit() {
    super.onInit();
    getCards();
  }
}
