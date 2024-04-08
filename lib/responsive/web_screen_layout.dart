import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_browser/color.dart';
import 'package:google_browser/widgets/web_footer.dart';
import 'package:google_browser/widgets/translation_buttons.dart';
import 'package:google_browser/widgets/web/search_buttons.dart';

import '../widgets/search.dart';

class WebScreenView extends StatelessWidget {
  const WebScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * .09,
        elevation: 0,
        backgroundColor: backgroundColor,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Gmail',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Images',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              colorFilter:
                  const ColorFilter.mode(primaryColor, BlendMode.srcIn),
            ),
          ),
          MaterialButton(
            color: const Color.fromRGBO(0, 122, 255, 1),
            onPressed: () {},
            child: const Text('Sign in'),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: size.height * .05),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Search(),
                      SizedBox(height: 20),
                      SearchButtons(),
                      SizedBox(height: 20),
                      TranslationButtons(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      persistentFooterButtons: const [
        WebFooter(),
      ],
    );
  }
}
