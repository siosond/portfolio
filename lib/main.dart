import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app.dart';
import 'package:portfolio/constants/locales.dart';
import 'package:portfolio/enums/assets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      fallbackLocale: Locales.english,
      path: Assets.translations.getPath(),
      startLocale: Locales.english,
      supportedLocales: Locales.supportedLocales,
      child: const App(),
    ),
  );
}
