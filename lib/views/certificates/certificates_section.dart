import 'package:flutter/material.dart';
import 'package:portfolio/enums/certificates.dart';
import 'package:portfolio/enums/types/placement_type.dart';
import 'package:portfolio/views/certificates/certificates_item.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';

class CertificatesSection extends StatelessWidget {
  const CertificatesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
        children: Certificates.values.map(
      (element) {
        final position = element.index == 0
            ? PlacementType.start
            : element.index == Certificates.values.length - 1
                ? PlacementType.end
                : PlacementType.center;

        return CertificatesItem(
          assetName: element.getPlatformLogo(),
          issueDate: element.completionDate,
          issuer: element.platformName,
          positions: position,
          title: element.courseTitle,
          urlString: element.getVerificationUrl(),
        );
      },
    ).toList());
  }
}
