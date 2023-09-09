class IndustryIdentifier {
  String? type;
  String? identifier;

  IndustryIdentifier({this.type, this.identifier});

  @override
  String toString() {
    return 'IndustryIdentifier(type: $type, identifier: $identifier)';
  }

  factory IndustryIdentifier.fromJsonDate(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'] as String?,
      identifier: json['identifier'] as String?,
    );
  }

  Map<String, dynamic> toJsonDate() => {
        'type': type,
        'identifier': identifier,
      };
}
