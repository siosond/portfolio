enum PackageAttributions {
  dartCasing(
    name: 'dart_casing',
    owner: 'Jesway',
    link: 'https://github.com/Jesway/dart_casing',
    license: 'license_mit',
  ),
  dio(
    name: 'dio',
    owner: 'flutter.cn',
    link: 'https://github.com/cfug/dio',
    license: 'license_mit',
  ),
  easyLocalization(
    name: 'easy_localization',
    owner: 'Aye7',
    link: 'https://github.com/aissat/easy_localization',
    license: 'license_mit',
  ),
  flutterLints(
    name: 'flutter_lints',
    owner: 'flutter.dev',
    link: 'https://github.com/flutter/packages',
    license: 'license_bsd3',
  ),
  flutterSvg(
    name: 'flutter_svg',
    owner: 'flutter.dev, Dan Field',
    link: 'https://github.com/flutter/packages',
    license: 'license_mit',
  ),
  path(
    name: 'path',
    owner: 'dart.dev',
    link: 'https://github.com/dart-lang/core/tree/main/pkgs/path',
    license: 'license_bsd3',
  ),
  responsiveBuilder(
    name: 'responsive_builder',
    owner: 'FilledStacks',
    link: 'https://github.com/FilledStacks/responsive_builder',
    license: 'license_mit',
  ),
  timelinesPlus(
    name: 'timelines_plus',
    owner: 'Sabin RanaBhat, Chulwoo Park',
    link: 'https://github.com/sawin0/timelines_plus',
    license: 'license_mit',
  );

  final String name;
  final String owner;
  final String license;
  final String link;

  const PackageAttributions({
    required this.name,
    required this.owner,
    required this.license,
    required this.link,
  });
}
