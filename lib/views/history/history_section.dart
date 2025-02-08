import 'package:easy_localization/easy_localization.dart';
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
      children: Histories.values.expand<Widget>(
        (history) {
          final positionCount = history.positionCount ?? 1;
          return List.generate(positionCount, (index) {
            final positionIndex = positionCount - index;
            final key = 'history_${history.name}_$positionIndex';
            final responsibilityCount =
                history.responsibilitiesPerPosition ?? [];

            return HistoryItem(
              icon: history.historyType == HistoryType.education
                  ? Icons.school
                  : Icons.work,
              position: history.index == 0
                  ? PlacementType.start
                  : history.index == Histories.values.length - 1
                      ? PlacementType.end
                      : PlacementType.center,
              title: positionCount == positionIndex
                  ? context.tr('history_${history.name}')
                  : '',
              subtitle: context.tr(key),
              period: context.tr('${key}_year'),
              items: responsibilityCount.isNotEmpty
                  ? List.generate(
                      responsibilityCount[positionIndex - 1],
                      (index) {
                        return context.tr('${key}_item_${index + 1}');
                      },
                    )
                  : <String>[],
            );
          });
        },
      ).toList(),
    );
  }
}
