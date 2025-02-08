import 'package:flutter/material.dart';
import 'package:portfolio/enums/types/placement_type.dart';
import 'package:portfolio/views/common/horizontal_divider.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';

class SegmentedContent extends StatelessWidget {
  final PlacementType positions;
  final Widget child;

  const SegmentedContent({
    required this.child,
    super.key,
    this.positions = PlacementType.center,
  });

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        if (positions != PlacementType.start) const HorizontalDivider(),
        child,
        if (positions != PlacementType.end) const HorizontalDivider(),
      ],
    );
  }
}
