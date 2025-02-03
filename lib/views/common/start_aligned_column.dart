import 'package:flutter/material.dart';

class StartAlignedColumn extends StatelessWidget {
  final List<Widget> children;
  final double spacing;

  const StartAlignedColumn({
    super.key,
    required this.children,
    this.spacing = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: spacing,
      children: children,
    );
  }
}
