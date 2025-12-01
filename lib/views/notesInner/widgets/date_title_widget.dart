import 'package:flutter/material.dart';
import 'package:note_app/core/utility/app_responsive.dart';

import '../../../core/utility/my_date_format.dart';
import '../../../models/note_model.dart';

class DateTitleWidget extends StatelessWidget {
  const DateTitleWidget({super.key, required this.note});

  final NoteModel? note;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          myDateFormat(note!.dateTime!),
          // "28 May, 2023 inner",
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              fontSize: 20,
              fontWeight: FontWeight.w400),
        ),
        Icon(
          Icons.keyboard_arrow_down_outlined,
          size: context.responsive(mobile: 30),
          color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
        )
      ],
    );
  }
}
