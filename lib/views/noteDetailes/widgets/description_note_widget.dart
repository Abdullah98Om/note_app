import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import 'package:note_app/core/utility/enums.dart';

import '../../../core/locale/languages/lanuage_keys.dart';
import '../../../viewmodels/notes_view_model.dart';

class DescriptionNoteWidget extends StatelessWidget {
  const DescriptionNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: context.responsiveHeight(mobile: 0)),
        child: GetBuilder<NotesViewModel>(builder: (controller) {
          return controller.note != null
              ? TextFormField(
                  initialValue: controller.note!.content,
                  // "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate ",
                  maxLines: 10,
                  cursorColor: Theme.of(context).colorScheme.secondary,
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
                  ),
                  onChanged: (value) {
                    controller.note = controller.note?.copyWith(content: value);
                  },
                  decoration: InputDecoration(
                      hintText: "enterNote".tr,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: context.responsive(mobile: 20),
                        height: 27 / 20,
                        fontWeight: FontWeight.w400,
                        color: Color(Get.isDarkMode ? 0xffA9A9A9 : 0xff656565)
                            .withOpacity(0.5),
                      )),
                )
              : const SizedBox.shrink();
        }));
  }
}
