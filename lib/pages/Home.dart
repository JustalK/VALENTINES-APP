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
                  radius: 72.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/me.jpeg'),
                )
              )
            ),
            Center(
              child: Text('TITLE',
                style: GoogleFonts.calligraffitti(
                  textStyle: TextStyle(color: Colors.white),
                  fontSize: 40
                )
              ),
            ),
            Container(
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed risus erat. Curabitur convallis euismod turpis, sed mollis lorem gravida blandit. Fusce sed tempus nisl. Praesent ac urna quam. Vivamus nec tempus tortor.',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(color: Colors.white),
                fontSize: 20
              ),
              textAlign: TextAlign.justify),
              padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 40.0),
            ),
            Center(
              child: ElevatedButton(
                child: Text('Open asdasda'),
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