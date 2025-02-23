import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/enums/downloads.dart';
import 'package:portfolio/views/common/styled_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => launchUrlString(Downloads.resume.getUrl()),
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: StyledText(
          context.tr('about_resume'),
          color: Colors.white,
        ),
      ),
    );
  }
}
