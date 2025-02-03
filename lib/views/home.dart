import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/views/responsive/responsive_scaffold.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: Text(context.tr('portfolio')),
      body: Center(
        child: Text(context.tr('hello_world')),
      ),
    );
  }
}
