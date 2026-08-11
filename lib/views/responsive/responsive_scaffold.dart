import 'package:flutter/material.dart';
import 'package:portfolio/views/common/horizontal_divider.dart';
import 'package:portfolio/views/responsive/responsive_action.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class ResponsiveScaffold extends StatefulWidget {
  final List<ResponsiveAction> actions;
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? title;

  const ResponsiveScaffold({
    super.key,
    required this.body,
    this.actions = const [],
    this.bottomNavigationBar,
    this.title,
  });

  @override
  State<ResponsiveScaffold> createState() => _ResponsiveScaffoldState();
}

class _ResponsiveScaffoldState extends State<ResponsiveScaffold> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 480;
    return SelectionArea(
      child: Scaffold(
        appBar: AppBar(
          actions: !isMobile || widget.actions.isEmpty
              ? [...widget.actions, const SizedBox(width: 10)]
              : null,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: HorizontalDivider(),
          ),
          title: widget.title,
        ),
        body: WebSmoothScroll(
          controller: _scrollController,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: isMobile ? 16.0 : 64.0),
              child: widget.body,
            ),
          ),
        ),
        bottomNavigationBar: widget.bottomNavigationBar,
        drawer: isMobile && widget.actions.isNotEmpty
            ? Drawer(child: ListView(children: widget.actions))
            : null,
      ),
    );
  }
}
