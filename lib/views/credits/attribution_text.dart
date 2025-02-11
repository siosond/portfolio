import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/enums/types/attribution_type.dart';
import 'package:portfolio/utils/license_utils.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AttributionText extends StatefulWidget {
  final AttributionType type;
  final String name;
  final String owner;
  final String? license;
  final String? link;

  const AttributionText({
    super.key,
    required this.type,
    required this.name,
    required this.owner,
    this.license,
    this.link,
  });

  @override
  State<AttributionText> createState() => _AttributionTextState();
}

class _AttributionTextState extends State<AttributionText> {
  final TapGestureRecognizer _licenseLinkTapRecognizer = TapGestureRecognizer();
  final TapGestureRecognizer _ownerLinkTapRecognizer = TapGestureRecognizer();

  @override
  void dispose() {
    _licenseLinkTapRecognizer.dispose();
    _ownerLinkTapRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.circle, size: 8.0),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: widget.name,
                ),
                if (widget.type == AttributionType.framework)
                  TextSpan(
                    text: ' ${context.tr('credits_by')} ',
                  ),
                if (widget.type == AttributionType.icon)
                  TextSpan(
                    text: ' ${context.tr('credits_by_icon')} ',
                  ),
                if (widget.type == AttributionType.package)
                  TextSpan(
                    text: ' ${context.tr('credits_by_package')} ',
                  ),
                if (widget.link == null)
                  TextSpan(
                    text: widget.owner,
                  ),
                if (widget.link != null)
                  TextSpan(
                    text: widget.owner,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                    recognizer: _ownerLinkTapRecognizer
                      ..onTap = () => launchUrlString(widget.link!),
                  ),
                if (widget.license != null)
                  TextSpan(
                    text: ' ${context.tr('credits_licensed_under')} ',
                  ),
                if (widget.license != null)
                  TextSpan(
                    text: widget.license,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                    recognizer: _licenseLinkTapRecognizer
                      ..onTap = () => LicenseUtils.openLicenseScreen(context),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
