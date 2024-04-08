import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_browser/widgets/mobile/mobile_footer.dart';
import '../color.dart';
import '../widgets/search.dart';
import '../widgets/translation_buttons.dart';
import '../widgets/web/search_buttons.dart';

class MobileScreenView extends StatelessWidget {
  const MobileScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          width: size.width * .65,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              0,
            ),
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: backgroundColor,
          title: SizedBox(
            width: size.width * .34,
            child: const DefaultTabController(
              length: 2,
              child: TabBar(
                labelColor: blueColor,
                indicatorColor: blueColor,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'ALL'),
                  Tab(text: 'IMAGES'),
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/more-apps.svg',
                colorFilter:
                    const ColorFilter.mode(primaryColor, BlendMode.srcIn),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: MaterialButton(
                color: const Color.fromRGBO(0, 122, 255, 1),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.0),
                  child: Text('Sign in'),
                ),
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: size.height * .10),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Search(),
                        SizedBox(height: 20),
                        TranslationButtons(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        persistentFooterButtons: const [
          MobileFooter(),
        ],
      ),
    );
  }
}
