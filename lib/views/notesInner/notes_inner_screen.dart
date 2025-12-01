import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import '../../core/routers/routers_name.dart';
import '../../models/note_model.dart';
import '../../viewmodels/notes_view_model.dart';
import '../noteDetailes/widgets/app_bar_note_screen_widget.dart';
import 'widgets/date_title_widget.dart';
import 'widgets/description_widget.dart';
import 'widgets/title_widget.dart';

class NotesInnerScreen extends StatelessWidget {
  const NotesInnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NotesViewModel controller = Get.find<NotesViewModel>();
    NoteModel? note = controller.note;
    return Scaffold(
      appBar: const AppBarNoteScreenWidget(),
      body: InkWell(
        onTap: () {
          controller.updateNote = true;
          Get.offNamed(RoutesName.noteDetailes);
        },
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.responsiveWidth(mobile: 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DateTitleWidget(note: note),
                  TitleWidget(note: note),
                  DescriptionWidget(note: note, controller: controller),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
