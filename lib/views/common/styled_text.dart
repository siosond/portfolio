import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String data;
  final Color? color;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final bool? softWrap;
  final TextAlign? textAlign;
  final bool small;

  const StyledText(
    this.data, {
    super.key,
    this.color,
    this.fontWeight,
    this.overflow,
    this.softWrap,
    this.textAlign,
    this.small = false,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: small
          ? const EdgeInsets.symmetric(vertical: 4.0)
          : EdgeInsets.zero,
      child: Text(
        data,
        overflow: overflow,
        softWrap: softWrap,
        textAlign: textAlign,
        style: (small ? textTheme.bodySmall : textTheme.bodyLarge)?.copyWith(
          color: color,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
