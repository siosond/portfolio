import 'package:portfolio/enums/types/skill_type.dart';

enum Skills {
  android(type: SkillType.mobile, label: 'Android'),
  kotlin(type: SkillType.mobile, label: 'Kotlin'),
  java(type: SkillType.mobile, label: 'Java'),
  flutter(type: SkillType.mobile, label: 'Flutter'),
  dart(type: SkillType.mobile, label: 'Dart'),
  jetpackCompose(type: SkillType.mobile, label: 'Jetpack Compose'),
  javascript(type: SkillType.web, label: 'JavaScript'),
  php(type: SkillType.web, label: 'PHP'),
  laravel(type: SkillType.web, label: 'Laravel'),
  jquery(type: SkillType.web, label: 'jQuery'),
  git(type: SkillType.tools, label: 'Git'),
  docker(type: SkillType.tools, label: 'Docker'),
  jira(type: SkillType.tools, label: 'Jira'),
  confluence(type: SkillType.tools, label: 'Confluence');

  final String label;
  final SkillType type;

  const Skills({required this.label, required this.type});
}
