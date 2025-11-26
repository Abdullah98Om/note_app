import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/locale/languages/lanuage_keys.dart';
import '../../../core/widgets/my_text_form_field.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MyTextFormField(
        hint: "searchHint".tr,
        icon: Icons.search,
        textDirection: Get.locale?.languageCode == AppLanguageKey.arabic
            ? TextDirection.rtl
            : TextDirection.ltr);
  }
}
