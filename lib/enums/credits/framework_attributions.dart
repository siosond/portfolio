enum FrameworkAttributions {
  flutter(
    name: 'Flutter',
    owner: 'Google',
    link: 'https://github.com/flutter/flutter',
    license: 'BSD 3-Clause "New" or "Revised" License',
  ),
  dart(
    name: 'Dart',
    owner: 'Google',
    link: 'https://github.com/dart-lang/sdk',
    license: 'BSD 3-Clause "New" or "Revised" License',
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
