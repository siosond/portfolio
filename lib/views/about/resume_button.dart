import 'package:flutter/material.dart';
import 'package:portfolio/constants/urls.dart';
import 'package:portfolio/views/common/styled_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => launchUrlString(Urls.resume),
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: const Padding(
        padding: EdgeInsets.all(6.0),
        child: StyledText('Resume', color: Colors.white),
      ),
    );
  }
}
