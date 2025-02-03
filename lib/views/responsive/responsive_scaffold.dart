import 'package:flutter/material.dart';
import 'package:portfolio/views/common/horizontal_divider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveScaffold extends StatelessWidget {
  final List<Widget> actions;
  final Widget body;
  final Widget? title;

  const ResponsiveScaffold({
    super.key,
    required this.body,
    this.actions = const [],
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          appBar: AppBar(
            actions: !sizingInformation.isMobile || !actions.isNotEmpty
                ? [...actions, const SizedBox(width: 10)]
                : null,
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
          drawer: sizingInformation.isMobile && actions.isNotEmpty
              ? Drawer(
                  child: ListView(
                    children: actions,
                  ),
                )
              : null,
        );
      },
    );
  }
}
