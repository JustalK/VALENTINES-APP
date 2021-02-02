import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:valentines_day/components/Background.dart';
import 'package:valentines_day/components/CardImageText.dart';
import 'package:valentines_day/podos/CardObject.dart';
import 'package:valentines_day/utils/loader.dart';

class History extends StatelessWidget {

  Future<List<CardObject>> loadHistory() async {
    String jsonString = await parseHistoryJson();
    final jsonResponse = json.decode(jsonString);
    final cards = jsonResponse.map((item) => CardObject.fromJson(item)).toList().cast<CardObject>();
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CardObject>>(
      future: loadHistory(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
              child: ListView.builder(                                                  
                  itemCount: snapshot.data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                      return Text('${snapshot.data[index].date}');                                           
                  }
              )
          );
        } else {
          // We can show the loading view until the data comes back.
          debugPrint('Step 1, build loading widget');
          return CircularProgressIndicator();
        }
      },
    );
  }
}