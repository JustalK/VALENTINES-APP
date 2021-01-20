import 'package:flutter/material.dart';
import '../routes.dart';
import 'BigMemory.dart';
import 'History.dart';
import '../components/Background.dart';

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
    MenuObject('assets/images/me.jpeg', 'TITLE', History()),
    MenuObject('assets/images/me.jpeg', 'TITLE', BigMemory()),
    MenuObject('assets/images/me.jpeg', 'TITLE', History()),
    MenuObject('assets/images/me.jpeg', 'TITLE', History()),
    MenuObject('assets/images/me.jpeg', 'TITLE', History()),
    MenuObject('assets/images/me.jpeg', 'TITLE', History()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: ListView(
          children: <Widget>[
            Center(
              child: Text('Title'),
            ),
            GridView.count(
                crossAxisCount: 2,
                physics: ScrollPhysics(), // to disable GridView's scrolling
                shrinkWrap: true,
                crossAxisSpacing: 8,
                mainAxisSpacing: 50,
                padding: EdgeInsets.symmetric(vertical: 40.0),
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
                        child: Text(
                          menus[i].title,
                          style: Theme.of(context).textTheme.headline5,
                        )
                      )
                    ]
                  );
                })
              )
          ]
        )
      )
    );
  }
}