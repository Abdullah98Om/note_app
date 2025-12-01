class OptionNoteModel {
  final String? color, align, size, font;
  final bool? bold, underLine, italic;

  OptionNoteModel({
    this.color,
    this.align,
    this.size,
    this.font,
    this.bold,
    this.underLine,
    this.italic,
  });

  factory OptionNoteModel.fromJson(Map<String, dynamic> json) {
    return OptionNoteModel(
      color: json['color'],
      align: json['align'],
      size: json['size'],
      font: json['font'],
      bold: json['bold'],
      underLine: json['underLine'],
      italic: json['italic'],
    );
  }

  OptionNoteModel copyWith({
    String? color,
    String? align,
    String? size,
    String? font,
    bool? bold,
    bool? underLine,
    bool? italic,
  }) {
    return OptionNoteModel(
      color: color ?? this.color,
      align: align ?? this.align,
      size: size ?? this.size,
      font: font ?? this.font,
      bold: bold ?? this.bold,
      underLine: underLine ?? this.underLine,
      italic: italic ?? this.italic,
    );
  }

  Map<String, dynamic> toJson() => {
        "color": color,
        "align": align,
        "size": size,
        "font": font,
        "bold": bold,
        "underLine": underLine,
        "italic": italic,
      };
}
