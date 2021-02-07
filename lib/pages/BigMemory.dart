import 'package:flutter/material.dart';
import 'dart:convert';
import '../components/ImageText.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valentines_day/podos/CardObject.dart';
import 'package:valentines_day/utils/loader.dart';

class BigMemory extends StatelessWidget {

  Future<List<CardObject>> loadMoments() async {
    String jsonString = await parseMomentsJson();
    final jsonResponse = json.decode(jsonString);
    final cards = jsonResponse.map((item) => CardObject.fromJson(item)).toList().cast<CardObject>();
    return cards;
  }

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
          color: Colors.pink,
          child: FutureBuilder<List<CardObject>>(
          future: loadMoments(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  child: ListView.builder( 
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: (MediaQuery.of(context).size.width),
                        color: Colors.pink,
                        child: ImageText(
                          pathImage: '${snapshot.data[index].pathImage}',
                          text: '${snapshot.data[index].text}'
                        )
                      );
                    }
                  )
                );
              } else {
                return CircularProgressIndicator();
              }
            }
          ),
      )
    );
  }
}