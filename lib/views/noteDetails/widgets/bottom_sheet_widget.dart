import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import 'package:note_app/core/utility/constant.dart';
import 'package:note_app/viewmodels/notes_view_model.dart';
import 'alignment_and_size_part_widget.dart';
import 'font_type_part_widget.dart';
import 'fonts_part_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotesViewModel>(builder: (controller) {
      return Container(
        height: context.screenHeight * 0.5,
        padding: EdgeInsets.all(context.responsive(mobile: 20)),
        decoration: BoxDecoration(
          color: Get.isDarkMode
              ? const Color(0xff272727)
              : const Color(0xffF3F3F3),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          children: [
            Image.asset(
              AppImage.bottomIcon,
              width: context.responsiveWidth(mobile: 48),
              height: context.responsiveWidth(mobile: 48),
            ),

            // Align && Size Font
            AlignmentAndSizePartWidget(controller: controller),
            // Colors
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: context.responsiveHeight(mobile: 24)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < controller.colors.length; i++)
                    InkWell(
                      onTap: () {
                        controller.note = controller.note!.copyWith(
                            options: controller.note!.options
                                .copyWith(color: controller.colors[i]));
                        controller.update();
                      },
                      child: Container(
                        width: context.responsiveWidth(mobile: 50),
                        height: context.responsiveWidth(mobile: 50),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(int.parse(controller.colors[i]))),
                      ),
                    )
                ],
              ),
            ),

            // font type
            FontTypePartWidget(controller: controller),
            SizedBox(height: context.responsiveHeight(mobile: 12)),
            // fonts
            FontsPartWidget(controller: controller),
          ],
        ),
      );
    });
  }
}
