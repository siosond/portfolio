import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String data;
  final Color? color;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final bool? softWrap;
  final TextAlign? textAlign;

  const StyledText(
    this.data, {
    super.key,
    this.color,
    this.fontWeight,
    this.overflow,
    this.softWrap,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      overflow: overflow,
      softWrap: softWrap,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}
