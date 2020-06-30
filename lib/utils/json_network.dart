import 'dart:convert';

import 'package:http/http.dart';

class JSONNetwork {
  final String url;

  JSONNetwork(this.url);

  Future<String> fetchData() async {
    print("The API was called from $url");

    Response response = await get(Uri.encodeFull(url));

    if (response.statusCode == 200) {
      // we are good to go
      // print(response.body);

      return json.encode(response.body);
    } else {
      print(response.statusCode);
    }

    return response.body;
  }
}
