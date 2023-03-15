import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/handle_bar.dart';
import 'package:portfolio/widgets/side_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold, basic material design visual layout structure.
    return Scaffold(
        backgroundColor: const Color(0xff01030b),
        body: Row(
          children: [
            // placeholder (an image of portfolio owner)
            Flexible(
              flex: 4,
              child: Image.asset('assets/images/profile.png'),
            ),
            // a column widget where the name, about me & handle bar are present.
            Flexible(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // empty space
                  const Spacer(
                    flex: 2,
                  ),
                  Flexible(
                    flex: 8,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // a separate container for portfolio owner's name
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 24, 24, 0),
                                  //all styling in a text widget
                                  child: Text(
                                    'Varun Gupta',
                                    style: GoogleFonts.kanit(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 75,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                //about me container
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 0, 24, 0),
                                  child: Text(
                                      'I am a sophomore in computer science at the Indian Institute of Technology, Hyderabad. I am passionate about technology and innovation, with a strong background in computer science, web development, competitive programming and computer vision. I am committed to staying in touch with the latest industry trends and technologies, always looking for opportunities to improve and grow as a developer.',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16,
                                        color: Colors.white,
                                      )),
                                ),
                                //Padding widget insets its child by the given padding.
                                // padding widget for handle bar
                                const Padding(
                                  padding: EdgeInsets.all(12),
                                  child: HandleBar(),
                                )
                              ],
                            )),
                        //side navigation bar here!
                        const SideNav(),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 7,
                    child: Image.asset('assets/images/bg.png'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
