import 'package:easy_localization/easy_localization.dart';
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
        StyledText(
          context.tr('credits_sdk_and_packages'),
          fontWeight: FontWeight.bold,
        ),
        StartAlignedColumn(
          children: [
            ...FrameworkAttributions.values.map(
              (element) {
                return AttributionText(
                  type: AttributionType.framework,
                  name: element.name,
                  owner: element.owner,
                  link: element.link,
                  license: context.tr(element.license),
                );
              },
            ),
            ...PackageAttributions.values.map(
              (element) {
                return AttributionText(
                  type: AttributionType.framework,
                  name: element.name,
                  owner: element.owner,
                  link: element.link,
                  license: context.tr(element.license),
                );
              },
            ),
          ],
        ),
        StyledText(
          context.tr('credits_attributions_app_icon'),
          fontWeight: FontWeight.bold,
        ),
        StartAlignedColumn(
          children: Projects.values.map(
            (element) {
              return AttributionText(
                type: AttributionType.icon,
                name: context.tr(element.getName()),
                owner: context.tr(element.getDeveloper()),
                link: element.getPlayStoreUrl(),
              );
            },
          ).toList(),
        ),
        StyledText(
          context.tr('credits_attributions_logo'),
          fontWeight: FontWeight.bold,
        ),
        StartAlignedColumn(
          children: LogoAttributions.values.map(
            (element) {
              return AttributionText(
                type: AttributionType.framework,
                name: element.name,
                owner: element.owner,
                link: element.link,
                license: element.license != null
                    ? context.tr(element.license!)
                    : null,
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
