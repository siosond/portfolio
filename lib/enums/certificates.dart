import 'package:portfolio/enums/logos.dart';
import 'package:portfolio/enums/types/certificate_type.dart';

enum Certificates {
  cleanCode(
    id: 'UC-3cc925bc-ab9a-4530-99c0-f2e4583f00fd',
    courseTitle: 'Clean Code',
    platformName: _udemy,
    completionDate: 'July 2023',
  ),
  oreoDevCourse(
    id: 'UC-0999fefd-f8df-4720-99fd-dc68dc7deff1',
    courseTitle: 'The Complete Android Oreo Developer Course - Build 23 Apps!',
    platformName: _udemy,
    completionDate: 'July 2023',
  ),
  android12KotlinMasterclass(
    id: 'UC-d1879990-d3a9-4ddc-a43d-75ea670f7bff',
    courseTitle: 'The Complete Android 12 & Kotlin Development Masterclass',
    platformName: _udemy,
    completionDate: 'July 2023',
  );

  final String id;
  final String courseTitle;
  final String platformName;
  final String completionDate;

  static const String _udemy = 'Udemy';

  const Certificates({
    required this.courseTitle,
    required this.platformName,
    required this.completionDate,
    required this.id,
  });

  String? getPlatformLogo() {
    return Logos.values
        .firstWhere((element) => element.name == platformName.toLowerCase())
        .getAsset();
  }

  String? getVerificationUrl() {
    return CertificateType.values
        .firstWhere((type) => type.name == platformName.toLowerCase())
        .getUrl(id);
  }
}
