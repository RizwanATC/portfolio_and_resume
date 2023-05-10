import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_and_resume/hidden_drawer.dart';
import 'package:portfolio_and_resume/page/about_me.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF05BFDB),
                Color(0xFFCAF9F7),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              transform: GradientRotation(-120), // Change the gradient angle to 45 degrees
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/profile.png'),
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  'RIZWAN BIN MAT NAWI',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Mobile App Developer',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  'Social Media',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Adding spacing of 20
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/linkedin.png'),
                      ),
                    ),
                    SizedBox(width: 20), // Adding spacing of 20
                    Container(
                      child: Image(
                        image: AssetImage('assets/insta.png'),
                      ),
                    ),
                    SizedBox(width: 20), // Adding spacing of 20
                    Container(
                      child: Image(
                        image: AssetImage('assets/fb.png'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      child: Image(
                        image: AssetImage('assets/tiktok.png'),
                      ),
                    ),// Adding spacing of 20
                  ],
                ),
                SizedBox(height: 80), // Adding gap between the Row and the ElevatedButton
                Container(
                // Add margin for spacing
                  child:Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SlideAction(
                      borderRadius: 12,
                      elevation: 2,
                      innerColor:Color(0xFF05BFDB),
                      outerColor:Color(0xFFCAF9F7),
                      sliderButtonIcon: const Icon(
                        Icons.lock_open,
                        color: Colors.white,
                      ),
                      text: 'Slide to view',
                      textStyle: GoogleFonts.rubik(
                        color: Colors.grey,
                        fontSize: 24,
                      ),
                      sliderRotate: false,
                      onSubmit: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HiddenDrawer()),
                        );
                      },

                    ) ,
                  )

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
