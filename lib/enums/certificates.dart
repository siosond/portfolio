import 'package:portfolio/constants/urls.dart';
import 'package:portfolio/enums/logos.dart';

enum Certificates {
  cleanCode(
    id: 'UC-3cc925bc-ab9a-4530-99c0-f2e4583f00fd',
    courseTitle: 'Clean Code',
    completionDate: 'July 2023',
  ),
  oreoDevCourse(
    id: 'UC-0999fefd-f8df-4720-99fd-dc68dc7deff1',
    courseTitle: 'The Complete Android Oreo Developer Course - Build 23 Apps!',
    completionDate: 'July 2023',
  ),
  android12KotlinMasterclass(
    id: 'UC-d1879990-d3a9-4ddc-a43d-75ea670f7bff',
    courseTitle: 'The Complete Android 12 & Kotlin Development Masterclass',
    completionDate: 'July 2023',
  );

  final String completionDate;
  final String courseTitle;
  final String id;

  const Certificates({
    required this.completionDate,
    required this.courseTitle,
    required this.id,
  });

  String? getPlatformLogo() => Logos.udemy.getAsset();

  String getVerificationUrl() => '${Urls.udemyCertificate}/$id';
}
