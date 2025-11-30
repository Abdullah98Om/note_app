import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import 'package:note_app/core/utility/my_date_format.dart';
import 'package:note_app/viewmodels/notes_view_model.dart';

import '../../../core/locale/languages/lanuage_keys.dart';
import '../../../core/routers/routers_name.dart';
import '../../../core/theme/app_color.dart';
import '../../../core/utility/constant.dart';
import '../../../models/note_model.dart';

class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({super.key, required this.note, required this.index});
  final NoteModel note;
  final int index;

  @override
  Widget build(BuildContext context) {
    final NotesViewModel notesViewModel = Get.find<NotesViewModel>();
    return InkWell(
      onTap: () {
        notesViewModel.setNote(index, notesViewModel.notes[index]);
        Get.toNamed(RoutesName.notesInner);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: context.responsive(mobile: 12)),
        padding: EdgeInsets.all(context.responsiveWidth(mobile: 16)),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(9)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              textDirection: Get.locale!.languageCode == AppLanguageKey.arabic
                  ? TextDirection.rtl
                  : TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          right:
                              Get.locale?.languageCode == AppLanguageKey.arabic
                                  ? 0
                                  : context.responsive(mobile: 6),
                          left:
                              Get.locale?.languageCode == AppLanguageKey.english
                                  ? 0
                                  : context.responsive(mobile: 6)),
                      height: context.responsiveWidth(mobile: 10),
                      width: context.responsiveWidth(mobile: 10),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.error,
                          shape: BoxShape.circle),
                    ),
                    Text(
                      myDateFormat(note.dateTime!),
                      style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.6),
                          fontWeight: FontWeight.w400,
                          fontSize: context.responsive(mobile: 16)),
                    ),
                  ],
                ),
                Image.asset(AppImage.shareIcon)
              ],
            ),
            SizedBox(height: context.responsiveHeight(mobile: 0)),
            Text(
              note.title,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w500,
                  fontSize: context.responsive(mobile: 20)),
            ),
            SizedBox(height: context.responsiveHeight(mobile: 10)),
            Text(
              note.content,
              style: TextStyle(
                  color: Get.isDarkMode
                      ? AppColor.grayTextColor
                      : AppColor.primaryLightColor.withOpacity(0.5),
                  fontWeight: FontWeight.w400,
                  height: 25 / 18, // (hight lint in figma / fontSize)
                  fontSize: context.responsive(mobile: 18)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Builder(builder: (context) {
                  String t = myTimeAgo(note.dateTime!);
                  return Row(
                    textDirection:
                        Get.locale!.languageCode == AppLanguageKey.arabic
                            ? TextDirection.rtl
                            : TextDirection.ltr,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (t == "now".tr)
                        Container(
                          margin: EdgeInsets.only(
                              right: Get.locale?.languageCode ==
                                      AppLanguageKey.arabic
                                  ? 0
                                  : context.responsive(mobile: 6),
                              left: Get.locale?.languageCode ==
                                      AppLanguageKey.english
                                  ? 0
                                  : context.responsive(mobile: 6)),
                          height: context.responsiveWidth(mobile: 10),
                          width: context.responsiveWidth(mobile: 10),
                          decoration: const BoxDecoration(
                              color: AppColor.color1, shape: BoxShape.circle),
                        ),
                      Text(
                        t, //"now".tr,
                        style: TextStyle(
                            color: t == "now".tr
                                ? AppColor.color1
                                : Get.isDarkMode
                                    ? const Color(0xffffffff)
                                    : AppColor.grayTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: context.responsive(mobile: 16)),
                      ),
                    ],
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
