import 'package:flutter/material.dart';
import '../routes.dart';
import 'BigMemory.dart';
import 'History.dart';
import 'Home.dart';
import '../components/Background.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuObject {
  String path;
  String title;
  Widget widget;

  MenuObject(this.path, this.title, this.widget);

  String get getPath {
    return this.path;
  }  

  String get getTitle {
    return this.title;
  }

  Widget get getWidget {
    return this.widget;
  }
}

class Menu extends StatelessWidget {
  List<MenuObject> menus = [
    MenuObject('assets/images/history.jpeg', 'OUR HISTORY', History()),
    MenuObject('assets/images/moments.jpeg', 'BEST MOMENTS', BigMemory())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Our Life',
          style: GoogleFonts.calligraffitti(
            textStyle: TextStyle(color: Colors.white),
            fontSize: 30
          )
        ),
        backgroundColor: Colors.pink,
      ),
      body: Background(
        padding: 20.0,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text('      Do you like all those moments together ? Personally, I love them. They are precious. From this moment when I put my eyes on you, the little tiny girl accross the street, to the moment I saw you coming back from the delivery room. I cherish everything but some memories are way more stronger than other...',
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(color: Colors.white),
                    fontSize: 18
                  ),
                  textAlign: TextAlign.justify
                ),
              )
            ),
            GridView.count(
                crossAxisCount: 2,
                physics: ScrollPhysics(), // to disable GridView's scrolling
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 50,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                children: List.generate(menus.length, (i) {
                  return Column(
                    children: <Widget> [
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(Routes().generateRoute(menus[i].widget, 800, i%2 == 0 ? -1.0 : 1.0, 0.0));
                          },
                          child: CircleAvatar(
                            radius: 72.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(menus[i].path),
                          )
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Colors.pink,
                            ),
                            child: Text(menus[i].title,
                              style: GoogleFonts.raleway(
                                textStyle: TextStyle(color: Colors.pink),
                                fontSize: 14
                              )
                            ),
                            onPressed: () {
                              Navigator.of(context).push(Routes().generateRoute(menus[i].widget, 800, i%2 == 0 ? -1.0 : 1.0, 0.0));
                            },
                          ),
                        )
                      )
                    ]
                  );
                })
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                child: Center(
                  child: Text('      Thoses moments made my day, made me laught and made me choose you for a lifetime. I am so proud of you, I wanna go everywhere and say proudly : "Yes, she is my wife. She is taken. You can just look !". I came here in the Philippines alone but I did not expected ever in my craziest dream to create a family there.',
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(color: Colors.white),
                      fontSize: 20
                    ),
                  ),
                )
              )
          ]
        )
      )
    );
  }
}