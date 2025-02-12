import 'package:flutter/material.dart';
import 'package:portfolio/enums/types/placement_type.dart';
import 'package:portfolio/views/common/label_text.dart';
import 'package:portfolio/views/common/segmented_content.dart';
import 'package:portfolio/views/common/styled_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectItem extends StatelessWidget {
  final PlacementType positions;
  final String appName;
  final String assetName;
  final String developer;
  final String storeLink;

  const ProjectItem({
    super.key,
    required this.appName,
    required this.assetName,
    required this.developer,
    required this.storeLink,
    this.positions = PlacementType.center,
  });

  @override
  Widget build(BuildContext context) {
    return SegmentedContent(
      positions: positions,
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0),
        onTap: () => launchUrlString(storeLink),
        leading: Image.asset(
          assetName,
          width: 48,
          height: 48,
        ),
        title: StyledText(
          appName,
          fontWeight: FontWeight.bold,
        ),
        subtitle: StyledText(developer),
      ),
    );
  }
}
