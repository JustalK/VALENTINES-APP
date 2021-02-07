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
                padding: EdgeInsets.only(bottom: 20.0),
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
              child: Text('      Hey baby Diane, you thought the evening I was just working on my personnal project, right ? But actually, I was working on my gift for valentine day. I could have write a letter as usual. However after a long time thinking about it, I come up with an unique idea. Something I am sure nobody gave you before, something representing me to the fullest, something you could show to the world. For a developer, what could be better than an aplication for showing my love to you ! And even better, I was doing it just under your eyes and you did not suspect anything...',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(color: Colors.white),
                fontSize: 18
              ),
              textAlign: TextAlign.justify),
              padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  onPrimary: Colors.pink,
                ),
                child: Text('CONTINUE',
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(color: Colors.white),
                    fontSize: 14
                  )
                ),
                onPressed: () {
                  Navigator.of(context).push(Routes().generateRoute(Menu(), 800, 0.0, 1.0));
                },
              ),
            )
          ],
        )
      )
    );
  }
}