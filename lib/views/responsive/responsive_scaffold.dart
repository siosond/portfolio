import 'package:flutter/material.dart';
import 'package:portfolio/views/common/horizontal_divider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveScaffold extends StatelessWidget {
  final Widget body;
  final Widget? title;

  const ResponsiveScaffold({
    super.key,
    required this.body,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          appBar: AppBar(
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: HorizontalDivider(),
            ),
            title: title,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: sizingInformation.isMobile ? 16.0 : 64.0,
              ),
              child: body,
            ),
          ),
        );
      },
    );
  }
}
