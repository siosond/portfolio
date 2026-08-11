import 'package:flutter/material.dart';
import 'package:portfolio/enums/histories.dart';
import 'package:portfolio/enums/types/history_type.dart';
import 'package:portfolio/enums/types/placement_type.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';
import 'package:portfolio/views/history/history_item.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        for (final (historyIndex, history) in Histories.values.indexed)
          for (final (positionIndex, position) in history.positions.indexed)
            HistoryItem(
              icon: history.type == HistoryType.education
                  ? Icons.school
                  : Icons.work,
              position: placementAt(historyIndex, Histories.values.length),
              title: positionIndex == 0 ? history.title : '',
              subtitle: position.subtitle,
              period: position.period,
              items: position.items,
            ),
      ],
    );
  }
}
