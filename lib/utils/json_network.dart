import 'dart:convert';

import 'package:flutter_api_app/utils/json_mapping_network_post.dart';
import 'package:http/http.dart';

class JSONNetwork {
  final String url;

  JSONNetwork(this.url);

  Future<JSONMappingNetworkPostList> loadPost() async {
    final response = await get(Uri.encodeFull(url));

    if (response.statusCode == 200) {
      return JSONMappingNetworkPostList.fromJson(json.decode(response.body));
    } else {
      // print(response.statusCode);
      throw Exception("Failed to get post");
    }
  }

  // Future fetchData() async {
  //   Response response = await get(Uri.encodeFull(url));

  //   if (response.statusCode == 200) {
  //     // we are good to go
  //     // print(response.body);

  //     return json.decode(response.body);
  //   } else {
  //     print(response.statusCode);
  //   }

  //   return response.body;
  // }
}
