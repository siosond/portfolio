import 'package:dart_casing/dart_casing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/enums/logos.dart';
import 'package:portfolio/enums/skills.dart';
import 'package:portfolio/enums/types/skill_type.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';
import 'package:portfolio/views/skills/skills_item.dart';
import 'package:portfolio/views/skills/skills_items.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: SkillType.values.map(
        (type) {
          return SkillsItems(
            title: context.tr(type.name),
            items: Skills.values.where(
              (skill) {
                return skill.type == type;
              },
            ).map(
              (skill) {
                return SkillsItem(
                  assetPath: Logos.values.byName(skill.name).getAsset(),
                  skillName: context.tr('skills_${Casing.snakeCase(skill.name)}'),
                );
              },
            ).toList(),
          );
        },
      ).toList(),
    );
  }
}
