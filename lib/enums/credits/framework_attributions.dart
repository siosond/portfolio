enum FrameworkAttributions {
  flutter(
    name: 'Flutter',
    owner: 'Google',
    link: 'https://github.com/flutter/flutter',
    license: 'license_bsd3',
  ),
  dart(
    name: 'Dart',
    owner: 'Google',
    link: 'https://github.com/dart-lang/sdk',
    license: 'license_bsd3',
  );

  final String name;
  final String owner;
  final String license;
  final String link;

  const FrameworkAttributions({
    required this.name,
    required this.owner,
    required this.license,
    required this.link,
  });
}
