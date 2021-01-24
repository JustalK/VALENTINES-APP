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
    MenuObject('assets/images/history.jpeg', 'Our History', History()),
    MenuObject('assets/images/moments.jpeg', 'Best Moments', BigMemory())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        padding: 50.0,
        child: ListView(
          children: <Widget>[
            Center(
              child: Text(
                  'Our Life',
                  style: GoogleFonts.calligraffitti(
                    textStyle: TextStyle(color: Colors.white),
                    fontSize: 40
                  )
                )
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text('      Do you like all those moments together ? Personally, I love them. They are precious. From this moment when I put my eyes on you, the little tiny girl accross the street, to the moment I saw you coming back from the delivery room. I cherish everything but some memories are stronger than other. Click on the picture under for seeing my favorite moments :',
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
                            Navigator.of(context).push(Routes().generateRoute(menus[i].widget, 800));
                          },
                          child: CircleAvatar(
                            radius: 72.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(menus[i].path),
                          )
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: <Widget> [
                            Center(
                              child: Text(
                                menus[i].title,
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(color: Colors.white),
                                  fontSize: 20
                                ),
                              )
                            )
                          ]
                        )
                      )
                    ]
                  );
                })
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40.0),
                child: Center(
                  child: Text('asdasdasd sd sd s ds ds ds ds ds ds d sd s ds ds',
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(color: Colors.white),
                      fontSize: 20
                    ),
                  ),
                )
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.pink,
                  ),
                  child: Text('BACK TO MENU',
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(color: Colors.pink),
                      fontSize: 14
                    )
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              )
          ]
        )
      )
    );
  }
}