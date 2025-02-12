import 'package:flutter/foundation.dart';
import 'package:path/path.dart';

enum Assets {
  downloads,
  logos,
  projects,
  translations;

  static const basePath = 'assets';

  String getPath() {
    return join(basePath, name);
  }
}
