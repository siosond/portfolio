import 'package:easy_localization/easy_localization.dart';
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
        Text(
          context.tr('about_name'),
          style: Theme.of(context).textTheme.displaySmall,
        ),
        StyledText(context.tr('about_bio')),
        Wrap(
          children: [
            const AboutIconButton(
              icon: Icons.email_outlined,
              urlString: Urls.email,
            ),
            AboutIconButton(
              icon: Logos.linkedin.getAsset(),
              urlString: Urls.linkedIn,
            ),
            AboutIconButton(
              icon: Logos.github.getAsset(),
              urlString: Urls.gitHub,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: ResumeButton(),
        )
      ],
    );
  }
}
