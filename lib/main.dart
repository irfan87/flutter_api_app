import 'package:flutter/material.dart';
import 'package:flutter_api_app/json/parsing_json.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter API App',
      home: ParsingJSON(),
    );
  }
}
