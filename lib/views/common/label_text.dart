import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  final String data;
  final TextAlign? textAlign;

  const LabelText(
    this.data, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        data,
        textAlign: textAlign,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
