import 'dart:convert';
import 'package:flutter/services.dart';

Future<String> parseHistoryJson() async {
  return await rootBundle.loadString("assets/images/history.json");
}