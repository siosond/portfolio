import 'package:path/path.dart';

enum Assets {
  logos,
  projects,
  translations;

  static const _basePath = 'assets';

  String getPath() {
    return join(_basePath, name);
  }
}
