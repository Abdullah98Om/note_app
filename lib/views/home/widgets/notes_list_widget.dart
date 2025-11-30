import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import 'package:note_app/viewmodels/notes_view_model.dart';

import 'note_card_widget.dart';

class NotesListWidget extends StatelessWidget {
  const NotesListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBuilder<NotesViewModel>(builder: (controller) {
          return ListView.builder(
            itemCount: controller.notes.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => NoteCardWidget(
              note: controller.notes[index], //"28 May",
              // "Task Management App Ui Design",
              index: index,
              // "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used.",
            ),
          );
        }),
        SizedBox(height: context.responsiveHeight(mobile: 110)),
      ],
    );
  }
}
