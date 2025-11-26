import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../storage/shared_service.dart';
import 'languages/lanuage_keys.dart';
import '../storage/storage_keys.dart';

class LocalService {
  /// قراءة اللغة
  static Locale getLocale() {
    String? lang = SharedService.readString(AppStorageKey.language);
    return Locale(lang ?? AppLanguageKey.arabic);
  }

  /// حفظ اللغة
  static Future<void> saveLocale(String lang) async {
    await SharedService.writeString(key: AppStorageKey.language, value: lang);
  }

  /// تبديل اللغة
  static Future<void> toggleLanguage() async {
    String current = Get.locale?.languageCode ?? AppLanguageKey.arabic;

    if (current == AppLanguageKey.arabic) {
      await saveLocale(AppLanguageKey.english);
      Get.updateLocale(const Locale(AppLanguageKey.english));
    } else {
      await saveLocale(AppLanguageKey.arabic);
      Get.updateLocale(const Locale(AppLanguageKey.arabic));
    }
  }
}
