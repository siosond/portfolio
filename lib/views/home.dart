import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/enums/sections.dart';
import 'package:portfolio/views/about/about_section.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';
import 'package:portfolio/views/responsive/responsive_action.dart';
import 'package:portfolio/views/responsive/responsive_scaffold.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: Text(context.tr('portfolio')),
      actions: Sections.values.map(
        (section) {
          return ResponsiveAction(
            child: Text(context.tr('actions_${section.name}')),
          );
        },
      ).toList(),
      body: const StartAlignedColumn(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 96.0),
            child: AboutSection(),
          ),
        ],
      ),
    );
  }
}
