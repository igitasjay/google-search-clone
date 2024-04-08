import 'package:flutter/material.dart';
import 'package:google_browser/color.dart';

class SearchButton extends StatelessWidget {
  final String title;
  const SearchButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      elevation: 0,
      color: searchColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 18,
      ),
      child: Text(title),
    );
  }
}
