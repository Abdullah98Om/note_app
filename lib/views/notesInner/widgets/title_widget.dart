import 'package:flutter/material.dart';
import 'package:note_app/core/utility/app_responsive.dart';

import '../../../models/note_model.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.note,
  });

  final NoteModel? note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.responsiveHeight(mobile: 20)),
      child: Text(
        note!.title, // "Notes App Changes",
        style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 30,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
