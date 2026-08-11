import 'package:flutter/material.dart';
import 'package:portfolio/enums/credits/framework_attributions.dart';
import 'package:portfolio/enums/credits/logo_attributions.dart';
import 'package:portfolio/enums/credits/package_attributions.dart';
import 'package:portfolio/enums/projects.dart';
import 'package:portfolio/enums/types/attribution_type.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';
import 'package:portfolio/views/common/styled_text.dart';
import 'package:portfolio/views/credits/attribution_text.dart';

class AttributionSection extends StatelessWidget {
  const AttributionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      spacing: 8.0,
      children: [
        const StyledText('SDK and Packages', fontWeight: FontWeight.bold),
        StartAlignedColumn(
          children: [
            ...FrameworkAttributions.values.map((element) {
              return AttributionText(
                type: AttributionType.framework,
                name: element.name,
                owner: element.owner,
                link: element.link,
                license: element.license,
              );
            }),
            ...PackageAttributions.values.map((element) {
              return AttributionText(
                type: AttributionType.framework,
                name: element.name,
                owner: element.owner,
                link: element.link,
                license: element.license,
              );
            }),
          ],
        ),
        const StyledText('App Icon Attributions', fontWeight: FontWeight.bold),
        StartAlignedColumn(
          children: Projects.values.map((element) {
            return AttributionText(
              type: AttributionType.icon,
              name: element.name,
              owner: element.developer,
              link: element.getPlayStoreUrl(),
            );
          }).toList(),
        ),
        const StyledText('Logo Attributions', fontWeight: FontWeight.bold),
        StartAlignedColumn(
          children: LogoAttributions.values.map((element) {
            return AttributionText(
              type: AttributionType.framework,
              name: element.name,
              owner: element.owner,
              link: element.link,
              license: element.license,
            );
          }).toList(),
        ),
      ],
    );
  }
}
