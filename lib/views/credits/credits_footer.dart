import 'package:flutter/material.dart';
import 'package:portfolio/views/common/horizontal_divider.dart';
import 'package:portfolio/views/common/styled_text.dart';
import 'package:portfolio/views/credits/credits_dialog.dart';

class CreditsFooter extends StatelessWidget {
  const CreditsFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 480;
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
                  'All trademarks, logos, and brand names are the property of their respective owners.',
                  textAlign: TextAlign.center,
                  small: isMobile,
                ),
                TextButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => const CreditsDialog(),
                  ),
                  child: StyledText(
                    'Credits',
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
