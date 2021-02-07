import 'dart:convert';
import 'package:flutter/services.dart';

Future<String> parseHistoryJson() async {
  return await rootBundle.loadString("assets/images/history.json");
}

Future<String> parseMomentsJson() async {
  return await rootBundle.loadString("assets/images/moments.json");
}