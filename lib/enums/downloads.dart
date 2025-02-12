import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:portfolio/enums/assets.dart';

enum Downloads {
  resume(fileName: 'resume.pdf');

  final String fileName;

  const Downloads({required this.fileName});

  String getUrl() {
    if (kReleaseMode) {
      return join(Assets.basePath, Assets.downloads.getPath(), fileName);
    }
    return join(Assets.downloads.getPath(), fileName);
  }
}
