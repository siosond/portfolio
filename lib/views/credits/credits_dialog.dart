import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/license_utils.dart';
import 'package:portfolio/views/credits/attribution_section.dart';

class CreditsDialog extends StatelessWidget {
  const CreditsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text(context.tr('credits')),
      content: Container(
        constraints: const BoxConstraints(maxWidth: 580),
        child: const SelectionArea(
          child: AttributionSection(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => LicenseUtils.openLicenseScreen(context),
          child: Text(context.tr('credits_view_licenses')),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(context.tr('close')),
        ),
      ],
    );
  }
}
