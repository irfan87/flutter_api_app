import 'dart:convert';

import 'package:http/http.dart';

class JSONMappingNetworkPost {
  final int userId;
  final int id;
  final String title;
  final String body;

  JSONMappingNetworkPost({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  // when we applied this data as a factory, the data will not changed
  factory JSONMappingNetworkPost.fromJson(Map<String, dynamic> jsonPost) {
    return JSONMappingNetworkPost(
      userId: jsonPost['userId'],
      id: jsonPost['id'],
      title: jsonPost['title'],
      body: jsonPost['body'],
    );
  }
}
