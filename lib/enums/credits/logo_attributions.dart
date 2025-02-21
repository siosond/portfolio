enum LogoAttributions {
  android(
    name: 'Android',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'license_cc0v1',
  ),
  confluence(
    name: 'Confluence',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'license_cc0v1',
  ),
  dart(
    name: 'Dart',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'license_cc0v1',
  ),
  docker(
    name: 'Docker',
    owner: 'Docker, Inc',
    link: 'https://www.docker.com/company/newsroom/media-resources/',
  ),
  flutter(
    name: 'Flutter',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'license_cc0v1',
  ),
  git(
    name: 'Git',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'license_cc0v1',
  ),
  gitHub(
    name: 'GitHub',
    owner: 'GitHub',
    link: 'https://github.com/images',
  ),
  java(
    name: 'Java',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'license_cc0v1',
  ),
  javaScript(
    name: 'JavaScript',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'license_cc0v1',
  ),
  jetpackCompose(
    name: 'Jetpack Compose',
    owner: 'devicon',
    link: 'https://github.com/devicons/devicon',
    license: 'license_mit',
  ),
  jira(
    name: 'Jira',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'license_cc0v1',
  ),
  jQuery(
    name: 'jQuery',
    owner: 'devicon',
    link: 'https://github.com/devicons/devicon',
    license: 'license_mit',
  ),
  kotlin(
    name: 'Kotlin',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'license_cc0v1',
  ),
  laravel(
    name: 'Laravel',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'license_cc0v1',
  ),
  linkedIn(
    name: 'LinkedIn',
    owner: 'LinkedIn Corporation',
    link: 'https://brand.linkedin.com/downloads',
  ),
  php(
    name: 'PHP',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'license_cc0v1',
  ),
  udemy(
    name: 'Udemy',
    owner: 'Udemy',
    link:
        'https://support.udemy.com/hc/en-us/articles/8926753692567-Trademark-Usage-Guidelines',
  );

  final String name;
  final String owner;
  final String? license;
  final String? link;

  const LogoAttributions({
    required this.name,
    required this.owner,
    this.license,
    this.link,
  });
}
