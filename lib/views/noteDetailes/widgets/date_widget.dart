import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import 'package:note_app/core/utility/my_date_format.dart';
import 'package:note_app/viewmodels/notes_view_model.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotesViewModel>(
      builder: (controller) => Row(
        children: [
          if (controller.note != null)
            Text(
              controller.note == null
                  ? myDateFormat(controller.note!.dateTime!)
                  : myDateFormat(DateTime.now()),
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
      ),
    );
  }
}
