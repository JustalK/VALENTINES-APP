import 'package:flutter/material.dart';
import '../routes.dart';
import 'BigMemory.dart';
import 'History.dart';
import '../components/Background.dart';

class Menu extends StatelessWidget {
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
                children: List.generate(7, (index) {
                  return Column(
                    children: <Widget> [
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(Routes().generateRoute(History(), 800));
                          },
                          child: CircleAvatar(
                            radius: 72.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('assets/images/me.jpeg'),
                          )
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          'Item $index',
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