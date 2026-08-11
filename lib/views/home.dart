import 'package:flutter/material.dart';
import 'package:portfolio/enums/sections.dart';
import 'package:portfolio/views/about/about_section.dart';
import 'package:portfolio/views/certificates/certificates_section.dart';
import 'package:portfolio/views/common/section_header.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';
import 'package:portfolio/views/common/styled_text.dart';
import 'package:portfolio/views/credits/credits_footer.dart';
import 'package:portfolio/views/history/history_section.dart';
import 'package:portfolio/views/projects/projects_section.dart';
import 'package:portfolio/views/responsive/responsive_action.dart';
import 'package:portfolio/views/responsive/responsive_scaffold.dart';
import 'package:portfolio/views/skills/skills_section.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void _scrollToWidget(GlobalKey globalKey) {
    if (globalKey.currentContext != null) {
      Scrollable.ensureVisible(
        globalKey.currentContext!,
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 500),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: const Text('Portfolio'),
      actions: Sections.values.map((section) {
        return ResponsiveAction(
          child: StyledText(section.label),
          onPressed: () => _scrollToWidget(section.globalKey),
        );
      }).toList(),
      body: StartAlignedColumn(
        children: [
          Padding(
            key: Sections.about.globalKey,
            padding: const EdgeInsets.symmetric(vertical: 96.0),
            child: const AboutSection(),
          ),
          SectionHeader('My Skills', key: Sections.skills.globalKey),
          const SkillsSection(),
          SectionHeader('History', key: Sections.history.globalKey),
          const HistorySection(),
          SectionHeader('My Projects', key: Sections.projects.globalKey),
          const ProjectsSection(),
          SectionHeader(
            'My Certificates',
            key: Sections.certificates.globalKey,
          ),
          const CertificatesSection(),
        ],
      ),
      bottomNavigationBar: const CreditsFooter(),
    );
  }
}
