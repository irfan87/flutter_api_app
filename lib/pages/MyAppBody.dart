import 'package:flutter/material.dart';

class MyAppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter API App'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('The API Call will be run here'),
        ),
      ),
    );
  }
}
