import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/certificates/certificates_section.dart';
import 'package:portfolio/enums/sections.dart';
import 'package:portfolio/views/about/about_section.dart';
import 'package:portfolio/views/common/section_header.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';
import 'package:portfolio/views/credits/credits_footer.dart';
import 'package:portfolio/views/history/history_section.dart';
import 'package:portfolio/views/projects/projects_section.dart';
import 'package:portfolio/views/responsive/responsive_action.dart';
import 'package:portfolio/views/responsive/responsive_scaffold.dart';
import 'package:portfolio/views/skills/skills_section.dart';

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
      body: StartAlignedColumn(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 96.0),
            child: AboutSection(),
          ),
          SectionHeader(context.tr('my_skills')),
          const SkillsSection(),
          SectionHeader(context.tr('actions_history')),
          const HistorySection(),
          SectionHeader(context.tr('my_projects')),
          const ProjectsSection(),
          SectionHeader(context.tr('my_certificates')),
          const CertificatesSection(),
        ],
      ),
      bottomNavigationBar: const CreditsFooter(),
    );
  }
}
