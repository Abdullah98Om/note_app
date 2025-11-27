import 'package:flutter/material.dart';
import 'package:note_app/core/utility/app_responsive.dart';

import '../theme/app_color.dart';

class MyButtont extends StatelessWidget {
  const MyButtont(
      {super.key,
      this.name,
      this.color = AppColor.color1,
      this.icon,
      this.onTap,
      this.textColor = Colors.white});
  final String? name;
  final Color color, textColor;
  final IconData? icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: context.responsiveHeight(mobile: 62),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: context.responsiveHeight(mobile: 18)),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: name != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: textColor, size: 26),
                  if (icon != null)
                    SizedBox(width: context.responsiveWidth(mobile: 6)),
                  Text(
                    name!,
                    style: TextStyle(
                        fontSize: context.responsive(mobile: 20),
                        fontWeight: FontWeight.w500,
                        color: textColor),
                  ),
                ],
              )
            : null,
      ),
    );
  }
}
