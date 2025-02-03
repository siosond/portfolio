import 'package:flutter/material.dart';
import 'package:portfolio/constants/colours.dart';

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colours.chineseWhite,
      height: 0,
    );
  }
}
