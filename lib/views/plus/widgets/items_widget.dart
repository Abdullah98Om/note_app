import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import '../../../core/utility/constant.dart';
import 'item_widget.dart';
import 'notes_and_task_buttons_widget.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: context.responsiveHeight(mobile: 32)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Theme.of(context).colorScheme.surface),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(context.responsiveWidth(mobile: 23)),
            child: Column(
              children: [
                ItemWidget(title: "camera".tr, image: AppImage.cameraIcon),
                ItemWidget(title: "drowing".tr, image: AppImage.drawingIcon),
                ItemWidget(title: "attachFile".tr, image: AppImage.fileIcon),
                ItemWidget(title: "audioFile".tr, image: AppImage.micIcon),
                ItemWidget(
                    title: "privateNotes".tr,
                    image: AppImage.lockIcon,
                    padding: 0)
              ],
            ),
          ),
          Divider(
              height: context.responsiveHeight(mobile: 2),
              color: Get.isDarkMode
                  ? const Color(0xff383854).withOpacity(0.33)
                  : Colors.white),
          const NotesAndTaskButtonsWidget()
        ],
      ),
    );
  }
}
