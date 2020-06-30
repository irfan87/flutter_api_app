import 'package:flutter/material.dart';
import 'package:flutter_api_app/utils/json_network.dart';

class ParsingJSON extends StatefulWidget {
  @override
  _ParsingJSONState createState() => _ParsingJSONState();
}

class _ParsingJSONState extends State<ParsingJSON> {
  Future<String> data;

  @override
  void initState() {
    super.initState();

    data = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter API App'),
        centerTitle: true,
      ),
    );
  }

  Future<String> getData() async {
    var data;

    String url = 'https://jsonplaceholder.typicode.com/posts';
    JSONNetwork jsonNetwork = JSONNetwork(url);

    data = jsonNetwork.fetchData();

    print(data);
    return data;
  }
}
