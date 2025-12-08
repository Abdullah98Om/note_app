import 'package:flutter/material.dart';

import '../../../viewmodels/notes_view_model.dart';
import 'font_style_widget.dart';

class FontTypePartWidget extends StatelessWidget {
  const FontTypePartWidget({super.key, required this.controller});
  final NotesViewModel controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FontStyleWidget(
          selected: controller.note!.options.bold != null
              ? controller.note!.options.bold!
                  ? true
                  : false
              : false,
          name: "Bold",
          onTap: () {
            controller.note = controller.note!.copyWith(
                options: controller.note!.options.copyWith(
                    bold: controller.note!.options.bold != null
                        ? !controller.note!.options.bold!
                        : true));
            controller.update();
          },
        ),
        FontStyleWidget(
          name: "underline",
          bold: false,
          underline: true,
          selected: controller.note!.options.underLine != null
              ? controller.note!.options.underLine!
                  ? true
                  : false
              : false,
          onTap: () {
            controller.note = controller.note!.copyWith(
                options: controller.note!.options.copyWith(
                    underLine: controller.note!.options.underLine != null
                        ? !controller.note!.options.underLine!
                        : true));
            controller.update();
          },
        ),
        FontStyleWidget(
          name: "Italian",
          bold: false,
          italic: true,
          selected: controller.note!.options.italic != null
              ? controller.note!.options.italic!
                  ? true
                  : false
              : false,
          onTap: () {
            controller.note = controller.note!.copyWith(
                options: controller.note!.options.copyWith(
                    italic: controller.note!.options.italic != null
                        ? !controller.note!.options.italic!
                        : true));
            controller.update();
          },
        ),
      ],
    );
  }
}
