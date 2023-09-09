class Pdf {
  bool? isAvailable;

  Pdf({this.isAvailable});

  @override
  String toString() => 'Pdf(isAvailable: $isAvailable)';

  factory Pdf.fromJsonDate(Map<String, dynamic> json) => Pdf(
        isAvailable: json['isAvailable'] as bool?,
      );

  Map<String, dynamic> toJsonDate() => {
        'isAvailable': isAvailable,
      };
}
