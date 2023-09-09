class Epub {
  bool? isAvailable;

  Epub({this.isAvailable});

  @override
  String toString() => 'Epub(isAvailable: $isAvailable)';

  factory Epub.fromJsonDate(Map<String, dynamic> json) => Epub(
        isAvailable: json['isAvailable'] as bool?,
      );

  Map<String, dynamic> toJsonDate() => {
        'isAvailable': isAvailable,
      };
}
