import 'package:flutter/cupertino.dart';

class HistoryObject {
  DateTime date;
  String image;
  String caption;

  HistoryObject({
    this.date,
    this.image,
    this.caption
  });

  DateTime get getDate {
    return this.date;
  }  

  String get getImage {
    return this.image;
  }

  String get getCaption {
    return this.caption;
  }

  factory HistoryObject.fromJson(Map<String, dynamic> json) {
    return HistoryObject (
      date: json['date'],
      image: json['image'].url,
      caption: json['caption'],
    );
  }
}