import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import 'package:note_app/viewmodels/notes_view_model.dart';

import '../../../core/locale/languages/lanuage_keys.dart';

class TitleNoteWidget extends StatelessWidget {
  const TitleNoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: context.responsiveHeight(mobile: 16)),
        child: GetBuilder<NotesViewModel>(builder: (controller) {
          return controller.note != null
              ? TextFormField(
                  initialValue: controller.note!.title,
                  maxLines: 1,
                  cursorColor: Theme.of(context).colorScheme.secondary,
                  textDirection:
                      Get.locale!.languageCode == AppLanguageKey.arabic
                          ? TextDirection.rtl
                          : TextDirection.ltr,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    height: 27 / 20,
                  ),
                  onChanged: (value) {
                    controller.note = controller.note?.copyWith(title: value);
                  },
                  decoration: InputDecoration(
                      hintText: "enterTitleNote".tr,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        height: 27 / 20,
                        color: Color(Get.isDarkMode ? 0xffA9A9A9 : 0xff656565)
                            .withOpacity(0.5),
                      )),
                )
              : const SizedBox.shrink();
        }));
  }
}
