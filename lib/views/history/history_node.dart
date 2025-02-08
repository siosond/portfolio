import 'package:flutter/material.dart';
import 'package:portfolio/constants/colours.dart';
import 'package:portfolio/enums/types/placement_type.dart';
import 'package:portfolio/views/history/history_connector.dart';
import 'package:timelines_plus/timelines_plus.dart';

class HistoryNode extends StatelessWidget {
  final IconData? icon;
  final PlacementType position;

  const HistoryNode({
    super.key,
    required this.position,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineNode(
      startConnector:
          position != PlacementType.start ? const HistoryConnector() : null,
      endConnector:
          position != PlacementType.end ? const HistoryConnector() : null,
      indicator: DotIndicator(
        color: position == PlacementType.start
            ? Theme.of(context).primaryColor
            : Colours.chineseWhite,
        size: 24,
        child: Icon(
          icon,
          color: position == PlacementType.start ? Colors.white : Colors.black,
          size: 14,
        ),
      ),
    );
  }
}
