import 'package:portfolio/enums/types/skill_type.dart';

enum Skills {
  android(type: SkillType.mobile),
  kotlin(type: SkillType.mobile),
  java(type: SkillType.mobile),
  flutter(type: SkillType.mobile),
  dart(type: SkillType.mobile),
  jetpackCompose(type: SkillType.mobile),
  javascript(type: SkillType.web),
  php(type: SkillType.web),
  laravel(type: SkillType.web),
  jquery(type: SkillType.web),
  git(type: SkillType.tools),
  docker(type: SkillType.tools),
  jira(type: SkillType.tools),
  confluence(type: SkillType.tools);

  final SkillType type;

  const Skills({
    required this.type,
  });
}
