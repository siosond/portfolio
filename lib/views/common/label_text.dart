import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  final String data;

  const LabelText(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        data,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
