import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String data;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  const StyledText(
    this.data, {
    super.key,
    this.color,
    this.fontWeight,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}
