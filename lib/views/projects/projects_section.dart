import 'package:flutter/material.dart';
import 'package:portfolio/enums/projects.dart';
import 'package:portfolio/enums/types/placement_type.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';
import 'package:portfolio/views/projects/project_item.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        for (final (index, element) in Projects.values.indexed)
          ProjectItem(
            appName: element.name,
            assetName: element.getAsset(),
            developer: element.developer,
            positions: placementAt(index, Projects.values.length),
            storeLink: element.getPlayStoreUrl(),
          ),
      ],
    );
  }
}
