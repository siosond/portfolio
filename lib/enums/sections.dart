import 'package:flutter/widgets.dart';

enum Sections {
  about(
    globalKey: GlobalObjectKey('about'),
  ),
  skills(
    globalKey: GlobalObjectKey('skills'),
  ),
  history(
    globalKey: GlobalObjectKey('history'),
  ),
  projects(
    globalKey: GlobalObjectKey('projects'),
  ),
  certificates(
    globalKey: GlobalObjectKey('certificates'),
  );

  final GlobalKey globalKey;

  const Sections({
    required this.globalKey,
  });
}
