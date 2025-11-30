import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';

import '../../../core/locale/languages/lanuage_keys.dart';
import '../../../viewmodels/notes_view_model.dart';

class DescriptionNoteWidget extends StatelessWidget {
  const DescriptionNoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: context.responsiveHeight(mobile: 0)),
        child: GetBuilder<NotesViewModel>(builder: (controller) {
          return controller.note != null
              ? TextFormField(
                  initialValue: controller.note!.content,
                  // "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate ",
                  maxLines: 15,
                  cursorColor: Theme.of(context).colorScheme.secondary,
                  textDirection:
                      Get.locale!.languageCode == AppLanguageKey.arabic
                          ? TextDirection.rtl
                          : TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color(Get.isDarkMode ? 0xffA9A9A9 : 0xff656565),
                      fontSize: context.responsive(mobile: 20),
                      height: 27 / 20,
                      fontWeight: FontWeight.w400),
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
