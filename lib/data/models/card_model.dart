class CardModel {
  final String cardNumber;
  final String cardHolderName;
  final String expiryDate;
  final String cvv;
  final String type;
  final bool isSelected;

  const CardModel({
    required this.type,
    required this.cardNumber,
    required this.cardHolderName,
    required this.expiryDate,
    required this.cvv,
    required this.isSelected,
  });

  CardModel.fromJson(Map<String, dynamic> json)
    : cardNumber = json['cardNumber'] as String,
      cardHolderName = json['cardHolderName'] as String,
      expiryDate = json['expiryDate'] as String,
      cvv = json['cvv'] as String,
      type = json['type'] as String,
      isSelected = false;

  Map<String, dynamic> toJson() {
    return {
      'cardNumber': cardNumber,
      'cardHolderName': cardHolderName,
      'expiryDate': expiryDate,
      'cvv': cvv,
      'type': type,
    };
  }
}
