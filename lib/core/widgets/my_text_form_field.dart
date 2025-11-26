import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key,
      this.hint,
      this.textDirection = TextDirection.rtl,
      required this.icon});

  final String? hint;
  final TextDirection textDirection;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: context.responsiveHeight(mobile: 56),
        padding: EdgeInsets.symmetric(
            horizontal: context.responsiveWidth(mobile: 16)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Theme.of(context).colorScheme.surface),
        child: TextFormField(
          cursorColor: Theme.of(context).colorScheme.secondary,
          textDirection: textDirection,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Theme.of(context).colorScheme.primary,
              fontSize: context.responsive(mobile: 14),
              fontWeight: FontWeight.w600),
          decoration: InputDecoration(
              prefixIcon: Icon(icon,
                  size: context.responsive(mobile: 30),
                  color: Color(Get.isDarkMode ? 0xff8F8F8F : 0xffB9B9B9)),
              counterStyle:
                  TextStyle(color: Theme.of(context).colorScheme.surface),
              hintText: hint,
              border: InputBorder.none, // إلغاء الخط السفلي
              enabledBorder: InputBorder.none, // إلغاء الحدود عند التمكين
              focusedBorder: InputBorder.none, // إلغاء الحدود عند التركيز
              errorBorder: InputBorder.none, // إلغاء الحدود عند الخطأ
              disabledBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              hintStyle: TextStyle(
                fontSize: context.responsive(mobile: 20),
                fontWeight: FontWeight.w400,
                color: Color(Get.isDarkMode ? 0xffffffff : 0xff7E7E7E)
                    .withOpacity(0.5),
              )),
        ));
  }
}
