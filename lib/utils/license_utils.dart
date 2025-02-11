import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/enums/licenses.dart';

class LicenseUtils {
  static final _dio = Dio();

  static void openLicenseScreen(BuildContext context) {
    showLicensePage(
      context: context,
      applicationName: context.tr('portfolio'),
    );
  }

  static Future<void> registerThirdPartyLicenses() async {
    for (var license in Licenses.values) {
      final response = await _dio.get(license.licenseUrl);
      if (response.statusCode == 200) {
        _addLicense(license, response);
      }
    }
  }

  static void _addLicense(Licenses license, Response<dynamic> response) {
    LicenseRegistry.addLicense(
      () {
        return Stream<LicenseEntry>.value(
          LicenseEntryWithLineBreaks(
            <String>[license.packageName],
            response.data as String,
          ),
        );
      },
    );
  }
}
