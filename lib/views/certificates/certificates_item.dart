import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/enums/types/placement_type.dart';
import 'package:portfolio/views/common/segmented_content.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';
import 'package:portfolio/views/common/styled_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CertificatesItem extends StatelessWidget {
  final PlacementType positions;
  final String? assetName;
  final String issueDate;
  final String issuer;
  final String title;
  final String? urlString;

  const CertificatesItem({
    super.key,
    required this.issueDate,
    required this.issuer,
    required this.title,
    required this.urlString,
    this.assetName,
    this.positions = PlacementType.center,
  });

  @override
  Widget build(BuildContext context) {
    return SegmentedContent(
      positions: positions,
      child: ListTile(
        onTap: urlString == null ? null : () => launchUrlString(urlString!),
        leading: assetName != null
            ? SvgPicture.asset(
                assetName!,
                height: 32,
                width: 32,
              )
            : null,
        title: StartAlignedColumn(
          children: [
            StyledText(
              title,
              fontWeight: FontWeight.bold,
            ),
            Text(issuer),
            Text(issueDate),
          ],
        ),
      ),
    );
  }
}
