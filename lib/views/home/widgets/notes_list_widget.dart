import 'package:flutter/material.dart';
import 'package:note_app/core/utility/app_responsive.dart';

import 'note_card_widget.dart';

class NotesListWidget extends StatelessWidget {
  const NotesListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const NoteCardWidget(
            time: "28 May",
            title: "Task Management App Ui Design",
            description:
                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used.",
          ),
        ),
        SizedBox(height: context.responsiveHeight(mobile: 110)),
      ],
    );
  }
}
