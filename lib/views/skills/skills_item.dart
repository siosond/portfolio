import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/views/common/styled_text.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsItem extends StatelessWidget {
  final String assetPath;
  final String skillName;

  const SkillsItem({
    super.key,
    required this.assetPath,
    required this.skillName,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return SizedBox(
          width: sizingInformation.isMobile ? null : 225,
          child: Card(
            elevation: 2,
            child: ListTile(
              leading: SvgPicture.asset(
                assetPath,
                width: 24,
              ),
              title: StyledText(
                skillName,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        );
      },
    );
  }
}
