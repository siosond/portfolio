import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutIconButton extends StatelessWidget {
  final dynamic icon;
  final String urlString;
  final double? size;

  const AboutIconButton({
    super.key,
    required this.icon,
    required this.urlString,
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: () => launchUrlString(urlString),
        icon: icon is IconData
            ? Icon(icon, size: size)
            : SvgPicture.asset(
                icon,
                height: size,
                width: size,
              ),
      ),
    );
  }
}
