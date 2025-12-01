import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';

import '../../../core/locale/local_service.dart';
import '../../../core/theme/theme_service.dart';

class TitleHomeWidget extends StatelessWidget {
  const TitleHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.responsiveHeight(mobile: 57)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('${"home_title".tr}\n${"app_name".tr}',
                style: TextStyle(
                    height: 61 / 50,
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: context.responsive(mobile: 50),
                    fontWeight: FontWeight.w500)),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    LocalService.toggleLanguage();
                  },
                  child: Icon(Icons.language,
                      size: context.responsive(mobile: 34),
                      color: Theme.of(context).colorScheme.primary),
                ),
                SizedBox(width: context.responsiveWidth(mobile: 8)),
                InkWell(
                  onTap: () {
                    ThemeService().switchTheme();
                  },
                  child: Icon(
                      Get.isDarkMode ? Icons.light_mode : Icons.dark_mode,
                      size: context.responsive(mobile: 34),
                      color: Theme.of(context).colorScheme.primary),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: context.responsiveHeight(mobile: 16)),
      ],
    );
  }
}
