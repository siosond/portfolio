import 'package:flutter/material.dart';
import 'package:portfolio/app.dart';
import 'package:portfolio/utils/license_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LicenseUtils.registerThirdPartyLicenses();

  runApp(const App());
}
