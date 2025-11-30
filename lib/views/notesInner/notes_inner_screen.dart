import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import 'package:note_app/core/utility/my_date_format.dart';

import '../../core/routers/routers_name.dart';
import '../../models/note_model.dart';
import '../../viewmodels/notes_view_model.dart';
import '../noteDetailes/widgets/app_bar_note_screen_widget.dart';

class NotesInnerScreen extends StatelessWidget {
  const NotesInnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NotesViewModel notesViewModel = Get.find<NotesViewModel>();
    NoteModel? note = notesViewModel.note;
    return Scaffold(
      appBar: const AppBarNoteScreenWidget(),
      body: InkWell(
        onTap: () {
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
                  // Date
                  Row(
                    children: [
                      Text(
                        myDateFormat(note!.dateTime!),
                        // "28 May, 2023 inner",
                        style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: context.responsive(mobile: 30),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.5),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: context.responsiveHeight(mobile: 16)),
                    child: Text(
                      note.title, // "Notes App Changes",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: context.responsiveHeight(mobile: 8)),
                    child: Text(
                      note.content, // "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate ",
                      style: TextStyle(
                          color:
                              Color(Get.isDarkMode ? 0xffA9A9A9 : 0xff656565),
                          fontSize: context.responsive(mobile: 20),
                          height: 27 / 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
