import 'package:flutter/material.dart';
import 'package:portfolio/constants/urls.dart';
import 'package:portfolio/enums/logos.dart';
import 'package:portfolio/views/about/about_icon_button.dart';
import 'package:portfolio/views/about/resume_button.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';
import 'package:portfolio/views/common/styled_text.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Daniel Sioson', style: Theme.of(context).textTheme.displaySmall),
        const StyledText('Mobile and Web Developer'),
        Wrap(
          children: [
            const AboutIconButton(
              icon: Icons.email_outlined,
              urlString: Urls.email,
            ),
            AboutIconButton(
              iconAsset: Logos.linkedin.getAsset(),
              urlString: Urls.linkedIn,
            ),
            AboutIconButton(
              iconAsset: Logos.github.getAsset(),
              urlString: Urls.gitHub,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: ResumeButton(),
        ),
      ],
    );
  }
}
