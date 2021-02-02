import 'dart:convert';
import 'package:flutter/services.dart';

Future parseHistoryJson() async {
  String jsonString = await rootBundle.loadString("assets/images/history.json");
  return jsonDecode(jsonString);
}