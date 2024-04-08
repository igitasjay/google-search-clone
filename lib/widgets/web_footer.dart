import 'package:flutter/material.dart';
import 'package:google_browser/color.dart';
import 'package:google_browser/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              FooterText(title: 'About'),
              SizedBox(width: 10),
              FooterText(title: 'Advertising'),
              SizedBox(width: 10),
              FooterText(title: 'About'),
              SizedBox(width: 10),
              FooterText(title: 'How Search Works'),
              SizedBox(width: 10),
            ],
          ),
          Row(
            children: [
              FooterText(title: 'Privacy'),
              SizedBox(width: 10),
              FooterText(title: 'Terms'),
              SizedBox(width: 10),
              FooterText(title: 'Settings'),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }
}
