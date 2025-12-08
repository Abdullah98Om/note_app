import 'package:uuid/uuid.dart';

import 'option_note_model.dart';

class NoteModel {
  final String id;
  final String title, content;
  final OptionNoteModel options;
  final DateTime? dateTime;

  NoteModel(
      {String? id,
      required this.title,
      required this.content,
      required this.options,
      this.dateTime})
      : id = id ?? const Uuid().v4();

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      dateTime: DateTime.parse(json['dateTime']),
      options: OptionNoteModel.fromJson(json['options']),
    );
  }

  NoteModel copyWith({
    String? id,
    String? title,
    String? content,
    OptionNoteModel? options,
    DateTime? dateTime,
  }) {
    return NoteModel(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      options: options ?? this.options,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        'dateTime': dateTime != null
            ? dateTime!.toIso8601String()
            : DateTime.now().toIso8601String(),
        "options": options.toJson(),
      };
}
