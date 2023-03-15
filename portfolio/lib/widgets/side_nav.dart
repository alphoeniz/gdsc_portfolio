import 'package:flutter/material.dart';
import 'package:portfolio/acad_page.dart';

class SideNav extends StatefulWidget {
  const SideNav({super.key});

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  bool _acad = false;
  bool _achievements = false;
  bool _projects = false;
  bool _blog = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // a mouse region to access the acad button
        MouseRegion(
          // onEnter method
          onEnter: (event) {
            setState(() {
              _acad = !_acad;
            });
          },
          // onExit method
          onExit: (event) {
            setState(() {
              _acad = !_acad;
            });
          },
          // changing the cursor type to on click if mouse region detects it.
          cursor: SystemMouseCursors.click,
          child: Container(
              width: 60,
              height: 60,
              color: const Color(0xff15244b),
              child: GestureDetector(
                onTap: () {
                  //navigator class to route to acadpage when onTap gesture is detected.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AcadPage()),
                  );
                },
                child: Image.asset(
                  // ternary operator to create the hover effect.
                  (!_acad)
                      ? 'assets/images/academics.png'
                      : 'assets/images/academics_b.png',
                  fit: BoxFit.contain,
                ),
              )),
        ),
        MouseRegion(
          onEnter: (event) {
            setState(() {
              _achievements = !_achievements;
            });
          },
          onExit: (event) {
            setState(() {
              _achievements = !_achievements;
            });
          },
          cursor: SystemMouseCursors.click,
          child: Container(
              width: 60,
              height: 60,
              color: const Color(0xffd9d9d9),
              child: GestureDetector(
                onTap: () {
                },
                child: Image.asset(
                  (!_achievements)
                      ? 'assets/images/achievements_b.png'
                      : 'assets/images/achievements.png',
                  fit: BoxFit.contain,
                ),
              )),
        ),
        MouseRegion(
          onEnter: (event) {
            setState(() {
              _projects = !_projects;
            });
          },
          onExit: (event) {
            setState(() {
              _projects = !_projects;
            });
          },
          child: Container(
            width: 60,
            height: 60,
            color: const Color(0xff15244b),
            child: Image.asset(
              (!_projects)
                  ? 'assets/images/projects.png'
                  : 'assets/images/projects_b.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        MouseRegion(
          onEnter: (event) {
            setState(() {
              _blog = !_blog;
            });
          },
          onExit: (event) {
            setState(() {
              _blog = !_blog;
            });
          },
          child: Container(
            width: 60,
            height: 60,
            color: const Color(0xffd9d9d9),
            child: Image.asset(
              (!_blog) ? 'assets/images/blog_b.png' : 'assets/images/blog.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
