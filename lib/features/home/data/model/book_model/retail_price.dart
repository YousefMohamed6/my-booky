class RetailPrice {
  double? amount;
  String? currencyCode;

  RetailPrice({this.amount, this.currencyCode});

  @override
  String toString() {
    return 'RetailPrice(amount: $amount, currencyCode: $currencyCode)';
  }

  factory RetailPrice.fromJsonDate(Map<String, dynamic> json) => RetailPrice(
        amount: (json['amount'] as num?)?.toDouble(),
        currencyCode: json['currencyCode'] as String?,
      );

  Map<String, dynamic> toJsonDate() => {
        'amount': amount,
        'currencyCode': currencyCode,
      };
}
