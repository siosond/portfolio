import 'package:path/path.dart';

enum Assets {
  logos,
  projects;

  static const basePath = 'assets';

  String getPath() {
    return join(basePath, name);
  }
}
