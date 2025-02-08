import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry padding;

  const SectionHeader(
    this.title, {
    super.key,
    this.padding = const EdgeInsets.only(bottom: 8.0, top: 32.0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
