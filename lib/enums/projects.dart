import 'package:dart_casing/dart_casing.dart';
import 'package:path/path.dart';
import 'package:portfolio/constants/urls.dart';
import 'package:portfolio/enums/assets.dart';

enum Projects {
  globeOne(id: 'ph.com.globe.globeonesuperapp'),
  andar(id: 'com.cafe24.ec.plusandar01'),
  medicube(id: 'com.cafe24.ec.plusmedicube0'),
  nongshimMall(id: 'com.cafe24.ec.plusnsmall2022'),
  smStore(id: 'com.cafe24.ec.plussmbm17109'),
  spao(id: 'com.cafe24.ec.plusspao'),
  ygSelect(id: 'com.makeshop.powerapp.ygnext'),
  promotionBridge(id: 'com.cafe24.promotion.bridge');

  final String id;

  const Projects({
    required this.id,
  });

  String getAsset() {
    return join(Assets.projects.getPath(), '$id.webp');
  }

  String getName() {
    return 'projects_${Casing.snakeCase(name)}_name';
  }

  String getDeveloper() {
    return 'projects_${Casing.snakeCase(name)}_developer';
  }

  String getPlayStoreUrl({String baseUrl = Urls.playStoreApp}) {
    return '$baseUrl$id';
  }
}
