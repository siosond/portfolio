import 'package:flutter/material.dart';

class ResponsiveAction extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;

  const ResponsiveAction({super.key, required this.child, this.onPressed});

  void _handleTap(BuildContext context) {
    onPressed?.call();
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < 480) {
      return ListTile(
        onTap: onPressed != null ? () => _handleTap(context) : null,
        title: child,
      );
    }
    return MaterialButton(onPressed: onPressed, child: child);
  }
}
