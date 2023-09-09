class SearchInfo {
  String? textSnippet;

  SearchInfo({this.textSnippet});

  @override
  String toString() => 'SearchInfo(textSnippet: $textSnippet)';

  factory SearchInfo.fromJsonData(Map<String, dynamic> json) => SearchInfo(
        textSnippet: json['textSnippet'] as String?,
      );

  Map<String, dynamic> toJsonDate() => {
        'textSnippet': textSnippet,
      };
}
