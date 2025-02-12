import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/views/common/horizontal_divider.dart';
import 'package:portfolio/views/common/styled_text.dart';
import 'package:portfolio/views/credits/credits_dialog.dart';

class CreditsFooter extends StatelessWidget {
  const CreditsFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).canvasColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const HorizontalDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                StyledText(
                  context.tr('credits_trademark_disclaimer'),
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => const CreditsDialog(),
                  ),
                  child: StyledText(
                    context.tr('credits'),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
