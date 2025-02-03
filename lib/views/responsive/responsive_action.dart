import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveAction extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;

  const ResponsiveAction({
    super.key,
    required this.child,
    this.onPressed,
  });

  void _handleTap(BuildContext context) {
    onPressed?.call();
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isMobile) {
          return ListTile(
            onTap: onPressed != null ? () => _handleTap(context) : null,
            title: child,
          );
        } else {
          return MaterialButton(
            onPressed: onPressed,
            child: child,
          );
        }
      },
    );
  }
}
