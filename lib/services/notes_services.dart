import 'dart:convert';

import 'package:note_app/core/storage/shared_service.dart';
import 'package:note_app/core/storage/storage_keys.dart';
import 'package:note_app/models/note_model.dart';

class NotesServices {
  NotesServices();

  List<NoteModel> loadNotes() {
    List<String> l = SharedService.readStringList(AppStorageKey.notes) ?? [];
    return l.map((e) => NoteModel.fromJson(jsonDecode(e))).toList();
  }

  // Create New Note
  bool addNewNote(NoteModel note) {
    try {
      List<NoteModel> list = loadNotes();
      list.add(note);

      List<String> saveList = list.map((n) => jsonEncode(n.toJson())).toList();
      SharedService.writeStringList(key: AppStorageKey.notes, value: saveList);

      return true;
    } catch (ex) {
      return false;
    }
  }

  // Delete  Note
  deleteNote(List<NoteModel> list) {
    List<String> saveList = list.map((n) => jsonEncode(n.toJson())).toList();
    SharedService.writeStringList(key: AppStorageKey.notes, value: saveList);
  }
}
