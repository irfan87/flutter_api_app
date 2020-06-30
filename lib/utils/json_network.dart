import 'dart:convert';

import 'package:http/http.dart';

class JSONNetwork {
  final String url;

  JSONNetwork(this.url);

  Future fetchData() async {
    Response response = await get(Uri.encodeFull(url));

    if (response.statusCode == 200) {
      // we are good to go
      // print(response.body);

      return json.decode(response.body);
    } else {
      print(response.statusCode);
    }

    return response.body;
  }
}
