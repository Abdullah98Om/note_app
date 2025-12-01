import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';

import '../../../core/locale/languages/lanuage_keys.dart';
import '../../../core/utility/enums.dart';
import '../../../models/note_model.dart';
import '../../../viewmodels/notes_view_model.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.note,
    required this.controller,
  });

  final NoteModel? note;
  final NotesViewModel controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.responsiveHeight(mobile: 8)),
      child: SizedBox(
        width: context.screenWidth,
        child: Text(
            note!
                .content, // "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate ",

            textDirection: controller.note!.options.align != null
                ? controller.note!.options.align == NoteAlign.ltr.name
                    ? TextDirection.ltr
                    : TextDirection.rtl
                : Get.locale!.languageCode == AppLanguageKey.arabic
                    ? TextDirection.rtl
                    : TextDirection.ltr,
            style: controller.getFontFamily(
              controller.note!.options.font,
              TextStyle(
                  fontStyle: controller.note!.options.italic == null
                      ? FontStyle.normal
                      : controller.note!.options.italic!
                          ? FontStyle.italic
                          : FontStyle.normal,
                  decorationColor: controller.note!.options.color != null
                      ? Color(int.parse(controller.note!.options.color!))
                      : Color(Get.isDarkMode ? 0xffA9A9A9 : 0xff656565),
                  decoration: controller.note!.options.underLine == null
                      ? TextDecoration.none
                      : controller.note!.options.underLine!
                          ? TextDecoration.underline
                          : TextDecoration.none,
                  color: controller.note!.options.color != null
                      ? Color(int.parse(controller.note!.options.color!))
                      : Color(Get.isDarkMode ? 0xffA9A9A9 : 0xff656565),
                  fontSize: context.responsive(
                      mobile: controller.note!.options.size == null
                          ? 20
                          : double.parse(controller.note!.options.size!)),
                  height: 27 / 20,
                  fontWeight: controller.note!.options.bold != null
                      ? controller.note!.options.bold!
                          ? FontWeight.bold
                          : FontWeight.w400
                      : FontWeight.w400),
            )),
      ),
    );
  }
}
