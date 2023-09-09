class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({this.text, this.image});

  @override
  String toString() => 'ReadingModes(text: $text, image: $image)';

  factory ReadingModes.fromJsonDate(Map<String, dynamic> json) {
    return ReadingModes(
      text: json['text'] as bool?,
      image: json['image'] as bool?,
    );
  }

  Map<String, dynamic> toJsonDate() => {
        'text': text,
        'image': image,
      };
}
