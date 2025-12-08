import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';

import '../../../core/utility/constant.dart';
import '../../../core/utility/enums.dart';
import '../../../viewmodels/notes_view_model.dart';

class AlignmentAndSizePartWidget extends StatelessWidget {
  const AlignmentAndSizePartWidget({super.key, required this.controller});
  final NotesViewModel controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Align
        Flexible(
          flex: 1,
          child: Container(
            padding:
                EdgeInsets.only(right: context.responsiveWidth(mobile: 16)),
            decoration: const BoxDecoration(
                border: Border(right: BorderSide(color: Color(0xffD6D6D6)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // align

                InkWell(
                    onTap: () {
                      controller.alignsSelect =
                          ((controller.alignsSelect ?? -1) + 1) %
                              controller.aligns.length;

                      controller.note = controller.note!.copyWith(
                          options: controller.note!.options.copyWith(
                              align:
                                  controller.aligns[controller.alignsSelect!]));
                      controller.update();
                    },
                    child: Transform.flip(
                      flipX:
                          controller.note!.options.align == NoteAlign.rtl.name
                              ? true
                              : false,
                      child:
                          Image.asset(AppImage.menuIcon, width: 36, height: 36),
                    )),

                // space
                InkWell(
                  onTap: () {},
                  child: Image.asset(AppImage.lineSpacingIcon,
                      width: 36, height: 36),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(AppImage.lineSpacingIcon,
                      width: 36, height: 36),
                ),
              ],
            ),
          ),
        ),

        // Size Text
        Flexible(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(left: context.responsiveWidth(mobile: 16)),
            decoration: const BoxDecoration(
                border: Border(left: BorderSide(color: Color(0xffD6D6D6)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    controller.note = controller.note!.copyWith(
                        options: controller.note!.options.copyWith(size: "40"));
                    controller.update();
                  },
                  child: Text(
                    "H1",
                    style: TextStyle(
                      fontSize: context.responsive(mobile: 30),
                      fontWeight: FontWeight.w400,
                      color: Get.isDarkMode
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.note = controller.note!.copyWith(
                        options: controller.note!.options.copyWith(size: "36"));
                    controller.update();
                  },
                  child: Text(
                    "H2",
                    style: TextStyle(
                      fontSize: context.responsive(mobile: 30),
                      fontWeight: FontWeight.w400,
                      color: Get.isDarkMode
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.note = controller.note!.copyWith(
                        options: controller.note!.options.copyWith(size: "32"));
                    controller.update();
                  },
                  child: Text(
                    "H3",
                    style: TextStyle(
                      fontSize: context.responsive(mobile: 30),
                      fontWeight: FontWeight.w400,
                      color: Get.isDarkMode
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
