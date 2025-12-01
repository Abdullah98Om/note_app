import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app/core/utility/app_responsive.dart';

import '../../../viewmodels/notes_view_model.dart';
import 'font_style_widget.dart';

class FontsPartWidget extends StatelessWidget {
  const FontsPartWidget({super.key, required this.controller});
  final NotesViewModel controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FontStyleWidget(
                name: "Avenir",
                selected: controller.note!.options.font != null
                    ? controller.note!.options.font == "avenir"
                        ? true
                        : false
                    : false,
                onTap: () {
                  controller.note = controller.note!.copyWith(
                      options:
                          controller.note!.options.copyWith(font: "avenir"));
                  controller.update();
                },
                fontFamily: GoogleFonts.romanesco(
                    fontSize: 20, fontWeight: FontWeight.w400)),
            FontStyleWidget(
                name: "Sansita",
                selected: controller.note!.options.font != null
                    ? controller.note!.options.font == "sansita"
                        ? true
                        : false
                    : false,
                onTap: () {
                  controller.note = controller.note!.copyWith(
                      options:
                          controller.note!.options.copyWith(font: "sansita"));
                  controller.update();
                },
                fontFamily: GoogleFonts.sansita(
                    fontSize: 20, fontWeight: FontWeight.w400)),
            FontStyleWidget(
                name: "Tajawal",
                onTap: () {
                  controller.note = controller.note!.copyWith(
                      options:
                          controller.note!.options.copyWith(font: "tajawal"));
                  controller.update();
                },
                selected: controller.note!.options.font != null
                    ? controller.note!.options.font == "tajawal"
                        ? true
                        : false
                    : false,
                fontFamily: GoogleFonts.tajawal(
                    fontSize: 20, fontWeight: FontWeight.w400)),
          ],
        ),
        SizedBox(height: context.responsiveHeight(mobile: 12)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FontStyleWidget(
                name: "aBeeZee",
                onTap: () {
                  controller.note = controller.note!.copyWith(
                      options:
                          controller.note!.options.copyWith(font: "aBeeZee"));
                  controller.update();
                },
                selected: controller.note!.options.font != null
                    ? controller.note!.options.font == "aBeeZee"
                        ? true
                        : false
                    : false,
                fontFamily: GoogleFonts.aBeeZee(
                    fontSize: 20, fontWeight: FontWeight.w400)),
            FontStyleWidget(
                name: "abel",
                onTap: () {
                  controller.note = controller.note!.copyWith(
                      options: controller.note!.options.copyWith(font: "abel"));
                  controller.update();
                },
                selected: controller.note!.options.font != null
                    ? controller.note!.options.font == "abel"
                        ? true
                        : false
                    : false,
                fontFamily: GoogleFonts.abel(
                    fontSize: 20, fontWeight: FontWeight.w400)),
            FontStyleWidget(
                name: "Aboreto",
                onTap: () {
                  controller.note = controller.note!.copyWith(
                      options:
                          controller.note!.options.copyWith(font: "aboreto"));
                  controller.update();
                },
                selected: controller.note!.options.font != null
                    ? controller.note!.options.font == "aboreto"
                        ? true
                        : false
                    : false,
                fontFamily: GoogleFonts.aboreto(
                    fontSize: 20, fontWeight: FontWeight.w400)),
          ],
        ),
      ],
    );
  }
}
