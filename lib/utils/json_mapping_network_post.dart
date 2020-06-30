// this will invoke the specific data that we want to show, such as ID, userId, title and body, as a map
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

// this will get the entire payload of post as a list
class JSONMappingNetworkPostList {
  final List<JSONMappingNetworkPost> posts;

  JSONMappingNetworkPostList({
    this.posts,
  });

  factory JSONMappingNetworkPostList.fromJson(List<dynamic> parsedJSONPosts) {
    List<JSONMappingNetworkPost> posts = List<JSONMappingNetworkPost>();

    posts =
        parsedJSONPosts.map((i) => JSONMappingNetworkPost.fromJson(i)).toList();

    return JSONMappingNetworkPostList(
        posts: posts); // example: Post.elementAt(0).userId;
  }
}
