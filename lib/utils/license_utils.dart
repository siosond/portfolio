import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/enums/licenses.dart';

class LicenseUtils {
  static void openLicenseScreen(BuildContext context) {
    showLicensePage(context: context, applicationName: 'Portfolio');
  }

  static Future<void> registerThirdPartyLicenses() async {
    for (final license in Licenses.values) {
      final response = await http.get(Uri.parse(license.licenseUrl));
      if (response.statusCode == 200) {
        LicenseRegistry.addLicense(() {
          return Stream<LicenseEntry>.value(
            LicenseEntryWithLineBreaks(<String>[
              license.packageName,
            ], response.body),
          );
        });
      }
    }
  }
}
