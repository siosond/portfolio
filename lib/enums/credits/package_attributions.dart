enum PackageAttributions {
  dartCasing(
    name: 'dart_casing',
    owner: 'Jesway',
    link: 'https://github.com/Jesway/dart_casing',
    license: 'MIT License',
  ),
  flutterLints(
    name: 'flutter_lints',
    owner: 'flutter.dev',
    link: 'https://github.com/flutter/packages',
    license: 'BSD 3-Clause "New" or "Revised" License',
  ),
  flutterSvg(
    name: 'flutter_svg',
    owner: 'flutter.dev, Dan Field',
    link: 'https://github.com/flutter/packages',
    license: 'MIT License',
  ),
  http(
    name: 'http',
    owner: 'dart.dev',
    link: 'https://github.com/dart-lang/http',
    license: 'BSD 3-Clause "New" or "Revised" License',
  ),
  path(
    name: 'path',
    owner: 'dart.dev',
    link: 'https://github.com/dart-lang/core/tree/main/pkgs/path',
    license: 'BSD 3-Clause "New" or "Revised" License',
  ),
  timelinesPlus(
    name: 'timelines_plus',
    owner: 'Sabin RanaBhat, Chulwoo Park',
    link: 'https://github.com/sawin0/timelines_plus',
    license: 'MIT License',
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
