import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';

class FontStyleWidget extends StatelessWidget {
  final String name;
  final TextStyle? fontFamily;
  final bool underline, italic, bold, selected;
  final void Function()? onTap;
  const FontStyleWidget(
      {super.key,
      required this.name,
      this.underline = false,
      this.italic = false,
      this.bold = true,
      this.fontFamily,
      this.onTap,
      this.selected = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: context.responsiveHeight(mobile: 57),
        width: context.responsiveWidth(mobile: 116),
        decoration: BoxDecoration(
            border: selected
                ? Border.all(color: Theme.of(context).colorScheme.secondary)
                : null,
            borderRadius: BorderRadiusDirectional.circular(12),
            color: Color(Get.isDarkMode ? 0xff1F1F1F : 0xffffffff)),
        child: Text(name,
            style: fontFamily ??
                TextStyle(
                    decorationThickness: 2,
                    decorationColor: selected
                        ? Theme.of(context).colorScheme.secondary
                        : Color(Get.isDarkMode ? 0xffD2D2D2 : 0xff000000),
                    decoration: underline ? TextDecoration.underline : null,
                    fontWeight: bold ? FontWeight.bold : null,
                    color: selected
                        ? Theme.of(context).colorScheme.secondary
                        : Color(Get.isDarkMode ? 0xffD2D2D2 : 0xff000000),
                    fontSize: context.responsive(mobile: 20),
                    fontStyle: italic ? FontStyle.italic : null)),
      ),
    );
  }
}
