import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colours.dart';
import 'package:portfolio/views/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colours.ultramarineBlue,
        ),
      ),
    );
  }
}
