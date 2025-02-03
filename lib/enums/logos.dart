import 'package:path/path.dart';
import 'package:portfolio/enums/assets.dart';

enum Logos {
  github,
  linkedin;

  String getAsset() {
    return join(
      Assets.logos.name,
      '$name.svg',
    );
  }
}
