import 'package:flutter/material.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';
import 'package:portfolio/views/common/styled_text.dart';

class SkillsItems extends StatelessWidget {
  final List<Widget> items;
  final String title;

  const SkillsItems({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: StyledText(
            title,
            fontWeight: FontWeight.bold,
          ),
        ),
        Wrap(children: items),
      ],
    );
  }
}
