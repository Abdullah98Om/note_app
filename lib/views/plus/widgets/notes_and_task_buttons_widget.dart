import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/routers/routers_name.dart';
import 'package:note_app/core/utility/app_responsive.dart';

import '../../../core/widgets/my_buttont.dart';

class NotesAndTaskButtonsWidget extends StatelessWidget {
  const NotesAndTaskButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: context.responsiveWidth(mobile: 23),
        left: context.responsiveWidth(mobile: 23),
        bottom: context.responsiveWidth(mobile: 12),
        top: context.responsiveWidth(mobile: 12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: MyButtont(
            name: "notes".tr,
            icon: Icons.note_add_outlined,
            onTap: () {
              Get.toNamed(RoutesName.noteDetailes);
            },
          )),
          SizedBox(width: context.responsiveWidth(mobile: 16)),
          Expanded(
              child: MyButtont(
            name: "task".tr,
            icon: Icons.list,
            color: const Color(0xff873AB6),
          )),
        ],
      ),
    );
  }
}
