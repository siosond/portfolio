import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutIconButton extends StatelessWidget {
  final IconData? icon;
  final String? iconAsset;
  final String urlString;
  final double? size;

  const AboutIconButton({
    super.key,
    required this.urlString,
    this.icon,
    this.iconAsset,
    this.size = 24.0,
  }) : assert(icon != null || iconAsset != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: () => launchUrlString(urlString),
        icon: icon != null
            ? Icon(icon, size: size)
            : SvgPicture.asset(iconAsset!, height: size, width: size),
      ),
    );
  }
}
