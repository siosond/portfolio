import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/views/common/horizontal_divider.dart';
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
                Text(
                  context.tr('credits_trademark_disclaimer'),
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.all(4.0),
                  ),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => const CreditsDialog(),
                  ),
                  child: Text(context.tr('credits')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
