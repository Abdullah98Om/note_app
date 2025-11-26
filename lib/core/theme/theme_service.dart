import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/storage/shared_service.dart';
import 'package:note_app/core/storage/storage_keys.dart';

class ThemeService {
  static const _key = AppStorageKey.darkTheme;

  bool loadTheme() {
    return SharedService.readBool(_key) ?? false;
  }

  void _saveTheme({required bool isDarkMode}) {
    SharedService.writeBool(key: _key, value: isDarkMode);
  }

  ThemeMode getThemeMode() {
    bool isDark = loadTheme();
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    bool isDark = !(loadTheme());
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
    _saveTheme(isDarkMode: isDark);
  }
}
