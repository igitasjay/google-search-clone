import 'package:flutter/material.dart';
import 'package:google_browser/color.dart';

class ResultScreenFooter extends StatelessWidget {
  const ResultScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: footerColor,
          padding: EdgeInsets.symmetric(
              horizontal: size.width < 768 ? 10 : 150, vertical: 15),
          child: Row(
            children: [
              Text(
                'Nigeria',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 20,
                width: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.circle,
                color: Colors.grey,
                size: 12,
              ),
              const SizedBox(width: 10),
              const Text(
                '5002003, Port Harcourt, Nigeria',
                style: TextStyle(color: primaryColor),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 0,
          height: 9,
          color: Colors.black26,
        ),
        Container(
          width: double.infinity,
          color: footerColor,
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Wrap(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Help',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Send Feedback',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Privacy',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Terms',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        )
      ],
    );
  }
}
