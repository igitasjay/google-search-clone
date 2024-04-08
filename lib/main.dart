import 'package:flutter/material.dart';
import 'package:google_browser/color.dart';
import 'package:google_browser/responsive/mobile_screen_view.dart';
import 'package:google_browser/responsive/responsive_layout.dart';
import 'package:google_browser/responsive/web_screen_layout.dart';
import 'package:google_browser/screens/result_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        useMaterial3: true,
      ),
      title: 'Google Search Project',
      home: const ResponsiveScreenLayout(
        webScreenView: WebScreenView(),
        mobileScreenView: MobileScreenView(),
      ),
    );
  }
}
