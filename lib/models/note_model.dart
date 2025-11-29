import 'option_note_model.dart';

class NoteModel {
  final String title, content;
  final OptionNoteModel options;

  NoteModel(
      {required this.title, required this.content, required this.options});

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      title: json['title'],
      content: json['content'],
      options: OptionNoteModel.fromJson(json['options']),
    );
  }

  Map<String, dynamic> toJson() => {
        "title": title,
        "content": content,
        "options": options.toJson(),
      };
}
