import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "plusTitle".tr,
      style: TextStyle(
          height: 61 / 50,
          fontWeight: FontWeight.w500,
          fontSize: context.responsive(mobile: 50)),
    );
  }
}
