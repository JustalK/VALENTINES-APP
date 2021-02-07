import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:valentines_day/components/Background.dart';
import 'package:valentines_day/components/CardImageText.dart';
import 'package:valentines_day/podos/CardObject.dart';
import 'package:valentines_day/utils/loader.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatelessWidget {

  Future<List<CardObject>> loadHistory() async {
    String jsonString = await parseHistoryJson();
    final jsonResponse = json.decode(jsonString);
    final cards = jsonResponse.map((item) => CardObject.fromJson(item)).toList().cast<CardObject>();
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('History',
        style: GoogleFonts.calligraffitti(
          textStyle: TextStyle(color: Colors.white),
          fontSize: 30
        )),
        backgroundColor: Colors.pink,
      ),
      body: Background(
        padding: 0.0,
        width: (MediaQuery.of(context).size.width),
        child: FutureBuilder<List<CardObject>>(
          future: loadHistory(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                    child: ListView.builder(                                                  
                      itemCount: snapshot.data.length,
                      scrollDirection: Axis.vertical,
                      padding: EdgeInsets.only(bottom: 40.0),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
                          child: Container(
                            height: 150,
                            color: Colors.pinkAccent,
                            padding: EdgeInsets.all(1.0),
                            child: CardImageText(date: '${snapshot.data[index].date}', text: '${snapshot.data[index].text}', pathImage: '${snapshot.data[index].pathImage}')
                          )
                        );                                          
                      }
                    )
                );
              } else {
                return CircularProgressIndicator();
              }
            },
          )
        )
    );
  }
}