import 'package:path/path.dart';
import 'package:portfolio/enums/assets.dart';

enum Projects {
  globeOne(
    id: 'ph.com.globe.globeonesuperapp',
    name: 'GlobeOne',
    developer: 'Globe Telecom',
  ),
  andar(
    id: 'com.cafe24.ec.plusandar01',
    name: 'ANDAR',
    developer: 'Andar Co., Ltd.',
  ),
  medicube(
    id: 'com.cafe24.ec.plusmedicube0',
    name: 'MEDICUBE',
    developer: 'APR_Corp.',
  ),
  nongshimMall(
    id: 'com.cafe24.ec.plusnsmall2022',
    name: 'NONGSHIM MALL',
    developer: 'Nongshim',
  ),
  smStore(
    id: 'com.cafe24.ec.plussmbm17109',
    name: '&STORE',
    developer: 'SM BRAND MARKETING',
  ),
  spao(id: 'com.cafe24.ec.plusspao', name: 'SPAO.com', developer: 'SPAO'),
  ygSelect(
    id: 'com.makeshop.powerapp.ygnext',
    name: 'YG SELECT',
    developer: 'YG PLUS',
  ),
  promotionBridge(
    id: 'com.cafe24.promotion.bridge',
    name: 'Promotion Bridge',
    developer: 'cafe24 corp.',
  );

  final String developer;
  final String id;
  final String name;

  const Projects({
    required this.developer,
    required this.id,
    required this.name,
  });

  String getAsset() {
    return join(Assets.projects.getPath(), '$id.webp');
  }

  String getPlayStoreUrl() {
    return 'https://play.google.com/store/apps/details?id=$id';
  }
}
