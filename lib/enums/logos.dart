import 'package:dart_casing/dart_casing.dart';
import 'package:path/path.dart';
import 'package:portfolio/enums/assets.dart';

enum Logos {
  android,
  confluence,
  dart,
  docker,
  flutter,
  git,
  github,
  java,
  javascript,
  jetpackCompose,
  jira,
  jquery,
  kotlin,
  laravel,
  linkedin,
  php,
  udemy;

  String getAsset() {
    return join(
      Assets.logos.getPath(),
      '${Casing.kebabCase(name)}.svg'
    );
  }
}
