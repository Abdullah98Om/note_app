import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';

class AppBarNoteScreenWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarNoteScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.close,
            size: context.responsive(mobile: 30),
            color: const Color(0xff8F8F8F),
          )),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.responsiveWidth(mobile: 16)),
          child: Row(
            children: [
              Icon(Icons.person_add_alt_1_outlined,
                  size: context.responsive(mobile: 30),
                  color: const Color(0xff8F8F8F)),
              SizedBox(width: context.responsiveWidth(mobile: 24)),
              Icon(Icons.pentagon_outlined,
                  size: context.responsive(mobile: 30),
                  color: const Color(0xff8F8F8F)),
              SizedBox(width: context.responsiveWidth(mobile: 24)),
              Icon(Icons.more_horiz_outlined,
                  size: context.responsive(mobile: 40),
                  color: const Color(0xff8F8F8F)),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
