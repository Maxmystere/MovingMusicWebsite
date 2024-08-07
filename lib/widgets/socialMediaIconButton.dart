import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconButton extends StatelessWidget {
  const SocialMediaIconButton({
    super.key,
    required this.icon,
    required this.url,
  });

  final Widget icon;
  final Uri url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 42,
      child: IconButton(
        padding: EdgeInsets.zero,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        icon: icon,
        onPressed: () {
          launchUrl(url);
        },
      ),
    );
  }
}