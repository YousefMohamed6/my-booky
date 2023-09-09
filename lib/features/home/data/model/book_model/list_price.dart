class ListPrice {
  double? amount;
  String? currencyCode;

  ListPrice({this.amount, this.currencyCode});

  @override
  String toString() {
    return 'ListPrice(amount: $amount, currencyCode: $currencyCode)';
  }

  factory ListPrice.fromJsonDate(Map<String, dynamic> json) => ListPrice(
        amount: (json['amount'] as num?)?.toDouble(),
        currencyCode: json['currencyCode'] as String?,
      );

  Map<String, dynamic> toJsonDate() => {
        'amount': amount,
        'currencyCode': currencyCode,
      };
}
