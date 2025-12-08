import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/viewmodels/notes_view_model.dart';
import '../../../core/widgets/my_buttont.dart';

class SaveButtonWidget extends StatelessWidget {
  const SaveButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final NotesViewModel notesViewModel = Get.find<NotesViewModel>();
    return Positioned(
        bottom: 110,
        left: 0,
        right: 0,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyButtont(
              name: "save".tr,
              onTap: () {
                notesViewModel.updateNote
                    ? notesViewModel.updateMyNote()
                    : notesViewModel.addNewNote();
              },
            )));
  }
}
