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
      children: [
        for (final (index, element) in Certificates.values.indexed)
          CertificatesItem(
            assetName: element.getPlatformLogo(),
            issueDate: element.completionDate,
            issuer: 'Udemy',
            positions: placementAt(index, Certificates.values.length),
            title: element.courseTitle,
            urlString: element.getVerificationUrl(),
          ),
      ],
    );
  }
}
