import 'package:get/get.dart';
import 'package:note_app/services/notes_services.dart';

import '../models/note_model.dart';

class NotesViewModel extends GetxController {
  final NotesServices _notesServices;
  NotesViewModel(this._notesServices);
  List<NoteModel> notes = [];

  @override
  void onInit() {
    super.onInit();
    loadNotes();
  }

  // get all Notes
  loadNotes() {
    notes = [];
    notes = _notesServices.loadNotes().reversed.toList();
    update();
  }

  NoteModel? note;
  int? selectedIndex;

  setNote(int? index, NoteModel newNote) {
    note = newNote;
    selectedIndex = index;
  }

  // Create New Note
  addNewNote() {
    if (note == null) return;
    if (note!.title.isEmpty) {
      Get.snackbar("titleNote".tr, "enterTitleNote".tr);
      return;
    }
    if (note!.content.isEmpty) {
      Get.snackbar("enterNote".tr, "");
      return;
    }

    bool done = _notesServices.addNewNote(note!);

    if (done) {
      loadNotes();
      Get.back();
    }
  }

  deleteNote() {
    if (selectedIndex != null) {
      notes.removeAt(selectedIndex!);
      List<NoteModel> newNotes = notes;
      update();
      _notesServices.deleteNote(newNotes.reversed.toList());
    }
  }
}
