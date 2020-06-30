import 'package:flutter/material.dart';
// change the home at MaterialApp with ParsingMapJSON for temporary
import 'package:flutter_api_app/json/parsing_json.dart';
import 'package:flutter_api_app/json/parsing_map_json.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter API App',
      home: ParsingMapJSON(),
    );
  }
}
