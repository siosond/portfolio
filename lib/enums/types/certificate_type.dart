import 'package:path/path.dart';
import 'package:portfolio/constants/urls.dart';

enum CertificateType {
  udemy(
    url: Urls.udemyCertificate,
  );

  final String url;

  const CertificateType({required this.url});

  String? getUrl(String id) {
    return join(url, id);
  }
}
