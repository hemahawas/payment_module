import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:payment_module/data/models/card_model.dart';

class CardRepository {
  final FirebaseFirestore firebaseFirestore;

  CardRepository({required this.firebaseFirestore});
  Future<List<CardModel>> getCards() {
    return firebaseFirestore.collection('cards').get().then((snapshot) {
      log('FIREBASE: Cards fetched successfully');
      return snapshot.docs
          .map((doc) => CardModel.fromJson(doc.data()))
          .toList();
    });
  }

  Future<void> saveCard(CardModel card) async {
    await firebaseFirestore.collection('cards').add(card.toJson()).then((_) {
      log('FIREBASE: Card saved successfully');
    });
  }
}
