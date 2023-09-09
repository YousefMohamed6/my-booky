class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  @override
  String toString() {
    return 'PanelizationSummary(containsEpubBubbles: $containsEpubBubbles, containsImageBubbles: $containsImageBubbles)';
  }

  factory PanelizationSummary.fromJsonDate(Map<String, dynamic> json) {
    return PanelizationSummary(
      containsEpubBubbles: json['containsEpubBubbles'] as bool?,
      containsImageBubbles: json['containsImageBubbles'] as bool?,
    );
  }

  Map<String, dynamic> toJsonDate() => {
        'containsEpubBubbles': containsEpubBubbles,
        'containsImageBubbles': containsImageBubbles,
      };
}
