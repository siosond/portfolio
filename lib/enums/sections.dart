import 'package:flutter/widgets.dart';

enum Sections {
  about(label: 'About', globalKey: GlobalObjectKey('about')),
  skills(label: 'Skills', globalKey: GlobalObjectKey('skills')),
  history(label: 'History', globalKey: GlobalObjectKey('history')),
  projects(label: 'Projects', globalKey: GlobalObjectKey('projects')),
  certificates(
    label: 'Certificates',
    globalKey: GlobalObjectKey('certificates'),
  );

  final GlobalKey globalKey;
  final String label;

  const Sections({required this.label, required this.globalKey});
}
