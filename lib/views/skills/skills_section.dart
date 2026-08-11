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
      children: [
        for (final type in SkillType.values)
          SkillsItems(
            title: type.label,
            items: [
              for (final skill in Skills.values.where((s) => s.type == type))
                SkillsItem(
                  assetPath: Logos.values.byName(skill.name).getAsset(),
                  skillName: skill.label,
                ),
            ],
          ),
      ],
    );
  }
}
