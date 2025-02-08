import 'package:easy_localization/easy_localization.dart';
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
      children: Projects.values.map(
        (element) {
          final position = element.index == 0
              ? PlacementType.start
              : element.index == Projects.values.length - 1
                  ? PlacementType.end
                  : PlacementType.center;

          return ProjectItem(
            appName: context.tr(element.getName()),
            assetName: element.getAsset(),
            developer: context.tr(element.getDeveloper()),
            positions: position,
            storeLink: element.getPlayStoreUrl(),
          );
        },
      ).toList(),
    );
  }
}
