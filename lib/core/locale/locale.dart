import 'package:get/get.dart';
import 'package:note_app/core/locale/languages/ar.dart';
import 'package:note_app/core/locale/languages/en.dart';
import 'package:note_app/core/locale/languages/lanuage_keys.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        AppLanguageKey.arabic: ar,
        AppLanguageKey.english: en,
      };
}
