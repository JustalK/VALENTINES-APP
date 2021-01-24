import 'package:flutter/material.dart';
import '../routes.dart';
import 'Menu.dart';
import '../components/Background.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        padding: 0.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 40.0),
                child: CircleAvatar(
                  radius: 90.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/me.jpeg'),
                )
              )
            ),
            Center(
              child: Text('My Sweet Diane',
                style: GoogleFonts.calligraffitti(
                  textStyle: TextStyle(color: Colors.white),
                  fontSize: 40
                )
              ),
            ),
            Container(
              child: Text('Hey Diane, you thought I was just working on my personnal project, right ? But actually, I was working on my gift for valentine day. I could have write a letter as usual. However, I was thinking hard to come up with an unique idea. Something that nobody gave you before, something that represent me, something you could show to the world. For a developer, what could be better than an aplication ! And even better, I was doing it just under your eyes and you did not suspect anything...',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(color: Colors.white),
                fontSize: 18
              ),
              textAlign: TextAlign.justify),
              padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 40.0),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.pink,
                ),
                child: Text('CONTINUE',
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(color: Colors.pink),
                    fontSize: 14
                  )
                ),
                onPressed: () {
                  Navigator.of(context).push(Routes().generateRoute(Menu(), 800));
                },
              ),
            )
          ],
        )
      )
    );
  }
}