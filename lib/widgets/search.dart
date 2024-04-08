import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_browser/color.dart';

import '../screens/result_screen.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/google-logo.png',
            height: size.width < 768 ? size.height * .09 : size.height * .12,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: size.width < 678 ? size.width * .9 : size.width * .4,
          child: TextFormField(
            onFieldSubmitted: (query) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    searchQuery: query,
                    start: '0',
                  ),
                ),
              );
            },
            decoration: InputDecoration(
              hintText: 'Search Google...',
              hintStyle: TextStyle(
                color: Colors.grey[700],
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(
                  color: searchBorder,
                ),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/images/search-icon.svg',
                  colorFilter:
                      const ColorFilter.mode(searchBorder, BlendMode.srcIn),
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/images/mic-icon.svg',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
