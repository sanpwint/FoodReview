import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:foodreviewapp/model/post.dart';
import 'package:http/http.dart' as http;

class News{
  final String menuName;
  final String restaurantName;
  final String township;
  final String urlToImage;

  News(this.menuName, this.restaurantName, this.township, this.urlToImage);
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var baseUrl = 'http://foodreview.khaingthinkyi.me/api/post';

  Post post;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async{
    var res = await http.get(baseUrl);
    var jsonData = json.decode(res.body);
    
    post = Post.fromJson(jsonData);
    print(post.toString());

    setState(() {

    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: post == null?
      Center(child: CircularProgressIndicator(),):
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              PostList(),
            ],
          )
    );
  }


  Expanded PostList(){
    return Expanded(
      child: ListView.builder(
        itemCount: post.posts.length,
        shrinkWrap:true,
        itemBuilder: (context, index){
          return Card(
            child: Column(
                children: [
                  Container(
                    width: 330.0,
                    height: 200.0,
                      child:Card(
                        child: (post.posts[index].image == null)
                            ? Image.network(
                            'https://yt3.ggpht.com/a/AATXAJzP8iiqrbsEgxZHXXZynrPyJGPVbD3o4xIbov9tchg=s900-c-k-c0xffffffff-no-rj-mo'
                        ): Image.network(
                          post.posts[index].image,
                          fit: BoxFit.fill,
                        ),
                      )
                    ),
                  Container(
                    child: ListTile(
                      title: Text(post.posts[index].menuName),
                      subtitle: Text(post.posts[index].resName),
                    ),
                  )
                ]
            ),
          );
        },
      ),
    );
  }
}