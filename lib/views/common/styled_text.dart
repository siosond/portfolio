import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String data;
  final Color? color;
  final FontWeight? fontWeight;

  const StyledText(
    this.data, {
    super.key,
    this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}
