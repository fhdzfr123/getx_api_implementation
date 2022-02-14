import 'dart:convert';
import 'package:getx_implementation/Models/post.dart';
import 'package:http/http.dart' as http;

class HTTPService{
  Future<List<Post>> getPosts()async{
    var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var decodedData = jsonDecode(response.body);
    return (decodedData as List).map((data) => Post.fromJson(data)).toList();
  }
}