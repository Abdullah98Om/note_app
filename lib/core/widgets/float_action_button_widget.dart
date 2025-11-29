import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import '../locale/languages/lanuage_keys.dart';

class FloatActionButtonWidget extends StatelessWidget {
  const FloatActionButtonWidget({super.key, required this.icon, this.onTap});

  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: context.responsiveHeight(mobile: 50),
      right: Get.locale?.languageCode == AppLanguageKey.arabic
          ? null
          : context.responsive(mobile: 20),
      left: Get.locale?.languageCode == AppLanguageKey.english
          ? null
          : context.responsive(mobile: 20),
      child: InkWell(
        onTap: onTap,
        child: Container(
            height: context.responsiveHeight(mobile: 80),
            width: context.responsiveWidth(mobile: 80),
            decoration: const BoxDecoration(
                color: Color(0xff5F5AC9), shape: BoxShape.circle),
            child: Icon(icon,
                color: Colors.white, size: context.responsive(mobile: 38))),
      ),
    );
  }
}
