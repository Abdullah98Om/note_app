import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app/core/utility/enums.dart';
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

  List<String> colors = [
    Colors.white.value.toString(),
    const Color(0xff386DF6).value.toString(),
    const Color(0xffEB6338).value.toString(),
    const Color(0xff4FB49C).value.toString(),
    const Color(0xffE6E762).value.toString(),
    const Color(0xffE74AC5).value.toString(),
  ];

  int? alignsSelect;
  List<String> aligns = [
    NoteAlign.ltr.name,
    NoteAlign.rtl.name,
  ];

  TextStyle getFontFamily(String? fontName, TextStyle baseStyle) {
    switch (fontName) {
      case "avenir":
        return GoogleFonts.romanesco().merge(baseStyle);
      case "sansita":
        return GoogleFonts.sansita().merge(baseStyle);
      case "tajawal":
        return GoogleFonts.tajawal().merge(baseStyle);
      case "aBeeZee":
        return GoogleFonts.aBeeZee().merge(baseStyle);
      case "abel":
        return GoogleFonts.abel().merge(baseStyle);
      case "aboreto":
        return GoogleFonts.aboreto().merge(baseStyle);
      default:
        return baseStyle;
    }
  }

  setNote(int? index, NoteModel newNote) {
    note = newNote;
    selectedIndex = index;
  }

  bool updateNote = false;
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

  updateMyNote() {
    if (note == null || selectedIndex == null) return;
    if (note!.title.isEmpty) {
      Get.snackbar("titleNote".tr, "enterTitleNote".tr);
      return;
    }
    if (note!.content.isEmpty) {
      Get.snackbar("enterNote".tr, "");
      return;
    }

    notes[selectedIndex!] = note!;

    bool done = _notesServices.updateMyNote(notes.reversed.toList());

    if (done) {
      // loadNotes();
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
