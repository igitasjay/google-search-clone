import 'package:flutter/material.dart';

import 'language_text.dart';

class TranslationButtons extends StatelessWidget {
  const TranslationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width >= 768) {
      return const Wrap(
        alignment: WrapAlignment.center,
        children: [
          Text('Google offered in:'),
          SizedBox(width: 5),
          LanguageText(title: 'English'),
          SizedBox(width: 5),
          LanguageText(title: 'Pidgin'),
          SizedBox(width: 5),
          LanguageText(title: 'Igbo'),
          SizedBox(width: 5),
          LanguageText(title: 'Hausa'),
          SizedBox(width: 5),
          LanguageText(title: 'Yoruba'),
          SizedBox(width: 5),
          LanguageText(title: 'Ikwerre'),
        ],
      );
    }
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Google offered in:'),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 5),
            LanguageText(title: 'English'),
            SizedBox(width: 5),
            LanguageText(title: 'Pidgin'),
            SizedBox(width: 5),
            LanguageText(title: 'Igbo'),
            SizedBox(width: 5),
            LanguageText(title: 'Hausa'),
            SizedBox(width: 5),
            LanguageText(title: 'Yoruba'),
            SizedBox(width: 5),
            LanguageText(title: 'Ikwerre'),
          ],
        ),
      ],
    );
  }
}
