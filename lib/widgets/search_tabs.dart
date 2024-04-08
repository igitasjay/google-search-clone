import 'package:flutter/material.dart';
import 'package:google_browser/widgets/web/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SearchTab(
            icon: Icons.search,
            title: 'All',
            isActive: true,
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.image,
            title: 'Images',
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.map,
            title: 'Map',
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.article,
            title: 'News',
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.shop,
            title: 'Shopping',
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.more_vert,
            title: 'More',
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
