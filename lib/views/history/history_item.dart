import 'package:flutter/material.dart';
import 'package:portfolio/enums/types/placement_type.dart';
import 'package:portfolio/views/history/history_contents.dart';
import 'package:portfolio/views/history/history_node.dart';
import 'package:timelines_plus/timelines_plus.dart';

class HistoryItem extends StatelessWidget {
  final IconData? icon;
  final List<String> items;
  final PlacementType position;
  final String period;
  final String subtitle;
  final String title;

  const HistoryItem({
    super.key,
    required this.period,
    required this.position,
    required this.subtitle,
    this.icon,
    this.items = const [],
    this.title = '',
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      nodeAlign: TimelineNodeAlign.start,
      contents: HistoryContents(
        items: items,
        period: period,
        subtitle: subtitle,
        title: title,
      ),
      node: HistoryNode(
        icon: icon,
        position: position,
      ),
    );
  }
}
