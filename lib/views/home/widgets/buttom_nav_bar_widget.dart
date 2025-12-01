import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import 'package:note_app/core/utility/constant.dart';

class ButtomNavBarWidget extends StatelessWidget {
  const ButtomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: context.responsiveWidth(mobile: 52)),
          height: context.responsiveHeight(mobile: 88),
          width: context.screenWidth,
          decoration:
              BoxDecoration(color: Theme.of(context).colorScheme.surface),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Image.asset(
                  Get.isDarkMode
                      ? AppImage.drawerDarkIcon
                      : AppImage.drawerIcon,
                  width: context.responsiveWidth(mobile: 30),
                ),
              ),
            ],
          ),
        ));
  }
}
