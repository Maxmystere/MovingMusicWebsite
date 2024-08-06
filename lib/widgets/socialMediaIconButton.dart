import 'package:flutter/material.dart';

class SocialMediaIconButton extends StatelessWidget {
  const SocialMediaIconButton({
    super.key,
    required this.icon,
    required this.url,
  });

  final IconData icon;
  final String url;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      icon: Icon(icon, size: 42,),
      onPressed: () {
        print('Opening $url');
      },
    );
  }
}