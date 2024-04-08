import 'package:flutter/material.dart';

class ResponsiveScreenLayout extends StatelessWidget {
  final Widget mobileScreenView;
  final Widget webScreenView;
  const ResponsiveScreenLayout({
    super.key,
    required this.webScreenView,
    required this.mobileScreenView,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 740) {
        return mobileScreenView;
      }
      return webScreenView;
    });
  }
}
