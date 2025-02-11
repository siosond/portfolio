import 'package:portfolio/constants/urls.dart';

enum Licenses {
  devicon(
    packageName: 'devicons/devicon',
    licenseUrl: Urls.deviconLicenseUrl,
  ),
  logos(
    packageName: 'gilbarbara/logos',
    licenseUrl: Urls.logosLicenseUrl,
  );

  final String packageName;
  final String licenseUrl;

  const Licenses({
    required this.packageName,
    required this.licenseUrl,
  });
}
