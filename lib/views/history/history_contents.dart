import 'package:flutter/material.dart';
import 'package:portfolio/views/common/label_text.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';
import 'package:portfolio/views/common/styled_text.dart';
import 'package:portfolio/views/history/history_items.dart';

class HistoryContents extends StatelessWidget {
  final List<String> items;
  final String period;
  final String subtitle;
  final String title;

  const HistoryContents({
    super.key,
    required this.period,
    required this.subtitle,
    this.items = const [],
    this.title = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      child: StartAlignedColumn(
        children: [
          if (title.isNotEmpty)
            StyledText(
              title,
              fontWeight: FontWeight.bold,
            ),
          StyledText(subtitle),
          if (items.isNotEmpty) HistoryItems(items: items),
          LabelText(period),
        ],
      ),
    );
  }
}
