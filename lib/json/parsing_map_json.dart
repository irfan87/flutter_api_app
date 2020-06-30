import 'package:flutter/material.dart';
import 'package:flutter_api_app/utils/json_mapping_network_post.dart';
import 'package:flutter_api_app/utils/json_network.dart';

class ParsingMapJSON extends StatefulWidget {
  @override
  _ParsingMapJSONState createState() => _ParsingMapJSONState();
}

class _ParsingMapJSONState extends State<ParsingMapJSON> {
  Future<JSONMappingNetworkPostList> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    JSONNetwork network =
        JSONNetwork('https://jsonplaceholder.typicode.com/posts');
    data = network.loadPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PODO'),
      ),
      body: Center(
        child: Container(
          child: FutureBuilder(
            future: data,
            builder:
                (context, AsyncSnapshot<JSONMappingNetworkPostList> snapshot) {
              List<JSONMappingNetworkPost> allPosts;

              if (snapshot.hasData) {
                allPosts = snapshot.data.posts;

                return createListView(allPosts, context);
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget createListView(
      List<JSONMappingNetworkPost> data, BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, int index) {
          return Column(
            children: <Widget>[
              Divider(
                height: 5.0,
              ),
              ListTile(
                title: Text(data.elementAt(index).title),
                subtitle: Text(data.elementAt(index).body),
                leading: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 23.0,
                      child: Text("${data.elementAt(index).userId}"),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
