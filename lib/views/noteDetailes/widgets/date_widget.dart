import 'package:flutter/material.dart';
import 'package:note_app/core/utility/app_responsive.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "28 May, 2023",
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
