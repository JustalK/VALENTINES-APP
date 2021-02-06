import 'package:flutter/material.dart';
import '../components/ImageText.dart';
import 'package:google_fonts/google_fonts.dart';

class BigMemory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Best Moments',
        style: GoogleFonts.calligraffitti(
          textStyle: TextStyle(color: Colors.white),
          fontSize: 30
        )),
        backgroundColor: Colors.pink,
      ),
      body: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: (MediaQuery.of(context).size.width),
                child: ImageText(
                  pathImage: 'assets/moments/moments_09.jpg',
                  text: 'This is the moment my heart felt the most happy in my whole life. The moment you said yes was wondeful. For me, it was more than just marrying you. It\'s a promise that whatever happen bad or good, I will stick with you. I will share with you everything I have. I will live and die beside you. I do my best to make you enjoy your life and have not regret to say yes that day. I will do more than my best. You will be my Queen, Princess.'
                )
              ),
              Container(
                width: (MediaQuery.of(context).size.width),
                child: ImageText(
                  pathImage: 'assets/moments/moments_09.jpg',
                  text: 'This day was stressful. I was scare to lose any of you. You can imagine my joy when I saw you coming back and when I saw her. My heart stops. One thought keeps ringing in my head saying : This is my daughter, the blood of my blood. Baby, you made me a daddy.')
              ),
              Container(
                width: (MediaQuery.of(context).size.width),
                color: Colors.transparent,
              ),
              Container(
                width: (MediaQuery.of(context).size.width),
                color: Colors.yellow,
              ),
            ],
          ),
      )
    );
  }
}