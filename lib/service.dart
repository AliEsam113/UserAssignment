import 'package:login/model.dart';
import 'package:dio/dio.dart';

class Service {
  String base = 'https://jsonplaceholder.typicode.com/';
  String post = 'posts';

  Future<List<Post>> getPosts() async {
    Response res = await Dio().get("$base$post");
    List<Post> posts=[];
    var data=res.data;
    data.forEach((element){
     posts.add(Post.fromJson(element));
    });
    return posts;
  }
}
