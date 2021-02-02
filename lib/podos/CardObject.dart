class CardObject {
  String date;
  String text;
  String pathImage;

  CardObject(this.date, this.text, this.pathImage);

  String get getText {
    return this.text;
  }  

  String get getDate {
    return this.date;
  }

  String get getPathImage {
    return this.pathImage;
  }
}