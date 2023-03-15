import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HandleBar extends StatefulWidget {
  const HandleBar({super.key});

  @override
  State<HandleBar> createState() => _HandleBarState();
}

class _HandleBarState extends State<HandleBar> {
  bool _linkedin = false;
  bool _github = false;
  bool _instagram = false;
  bool _twitter = false;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      //mouseregion for linkedin button
      MouseRegion(
        onEnter: (event) {
          setState(() {
            _linkedin = !_linkedin;
          });
        },
        onExit: (event) {
          setState(() {
            _linkedin = !_linkedin;
          });
        },
        child: SizedBox(
          width: 65,
          height: 65,
          //a gesture detector to access onTap method
          child: GestureDetector(
            onTap: () {
              launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/varun-gupta-60455525a/'));
            },
            child: Image.asset(
              (!_linkedin)
                  ? 'assets/images/linkedin_w.png'
                  : 'assets/images/linkedin_b.png',
            ),
          ),
        ),
      ),
      MouseRegion(
        onEnter: (event) {
          setState(() {
            _github = !_github;
          });
        },
        onExit: (event) {
          setState(() {
            _github = !_github;
          });
        },
        child: SizedBox(
          width: 65,
          height: 65,
          child: GestureDetector(
            onTap: () {
              launchUrl(Uri.parse('https://github.com/procodervarun'));
            },
            child: Image.asset(
              (!_github)
                  ? 'assets/images/github_w.png'
                  : 'assets/images/github_b.png',
            ),
          ),
        ),
      ),
      MouseRegion(
        onEnter: (event) {
          setState(() {
            _instagram = !_instagram;
          });
        },
        onExit: (event) {
          setState(() {
            _instagram = !_instagram;
          });
        },
        child: SizedBox(
          width: 65,
          height: 65,
          child: GestureDetector(
            onTap: () {
              launchUrl(Uri.parse('https://www.instagram.com/vrhunn/'));
            },
            child: Image.asset(
              (!_instagram)
                  ? 'assets/images/insta_w.png'
                  : 'assets/images/insta_b.png',
            ),
          ),
        ),
      ),
      MouseRegion(
        onEnter: (event) {
          setState(() {
            _twitter = !_twitter;
          });
        },
        onExit: (event) {
          setState(() {
            _twitter = !_twitter;
          });
        },
        child: SizedBox(
          width: 65,
          height: 65,
          child: GestureDetector(
            onTap: () {
              launchUrl(Uri.parse('https://twitter.com/'));
            },
            child: Image.asset(
              (!_twitter)
                  ? 'assets/images/twitter_w.png'
                  : 'assets/images/twitter_b.png',
            ),
          ),
        ),
      ),
    ]);
  }
}
