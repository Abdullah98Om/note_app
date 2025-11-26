import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/locale/languages/lanuage_keys.dart';
import 'core/locale/local_service.dart';
import 'core/locale/locale.dart';
import 'core/routers/routers_name.dart';
import 'core/routers/routes.dart';
import 'core/storage/shared_service.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_service.dart';
import 'core/utility/binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedService.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final currentTheme = ThemeService().getThemeMode();
      final currentLang = LocalService.getLocale();

      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: Binding(),
        locale: currentLang,
        translations: MyLocale(),
        textDirection: (currentLang.languageCode == AppLanguageKey.arabic)
            ? TextDirection.rtl
            : TextDirection.ltr,
        title: 'Note App',
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: currentTheme,
        initialRoute: RoutesName.home,
        getPages: AppRoutes.routes,
      );
    });
  }
}
