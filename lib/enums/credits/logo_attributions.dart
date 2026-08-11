enum LogoAttributions {
  android(
    name: 'Android',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'Creative Commons Zero v1.0 Universal',
  ),
  confluence(
    name: 'Confluence',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'Creative Commons Zero v1.0 Universal',
  ),
  dart(
    name: 'Dart',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'Creative Commons Zero v1.0 Universal',
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
    license: 'Creative Commons Zero v1.0 Universal',
  ),
  git(
    name: 'Git',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'Creative Commons Zero v1.0 Universal',
  ),
  gitHub(name: 'GitHub', owner: 'GitHub', link: 'https://github.com/images'),
  java(
    name: 'Java',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'Creative Commons Zero v1.0 Universal',
  ),
  javaScript(
    name: 'JavaScript',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'Creative Commons Zero v1.0 Universal',
  ),
  jetpackCompose(
    name: 'Jetpack Compose',
    owner: 'devicon',
    link: 'https://github.com/devicons/devicon',
    license: 'MIT License',
  ),
  jira(
    name: 'Jira',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'Creative Commons Zero v1.0 Universal',
  ),
  jQuery(
    name: 'jQuery',
    owner: 'devicon',
    link: 'https://github.com/devicons/devicon',
    license: 'MIT License',
  ),
  kotlin(
    name: 'Kotlin',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'Creative Commons Zero v1.0 Universal',
  ),
  laravel(
    name: 'Laravel',
    owner: 'Gil Barbara',
    link: 'https://github.com/gilbarbara/logos',
    license: 'Creative Commons Zero v1.0 Universal',
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
    license: 'Creative Commons Zero v1.0 Universal',
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
