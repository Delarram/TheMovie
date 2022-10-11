import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PostMethodApi extends StatefulWidget {
  const PostMethodApi({Key? key}) : super(key: key);

  @override
  State<PostMethodApi> createState() => _PostMethodApiState();
}

class _PostMethodApiState extends State<PostMethodApi> {
    Dio dio = new Dio();
   Future postData() async{

     const String pathUrl = "https://jsonplaceholder.typicode.com/posts";

     dynamic data = {
       'title' : "flutter http post",
        'body' : 'flutter',
       'user_id' : 1
     };

     var response = await dio.post(
         pathUrl,data: data,options: Options(headers: {
       'Content-type': 'application/json; charset=UTF-8',
     }));
     
     return response.data;
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              color: Colors.amber,
              onPressed: () async{
                print("post data");
                await postData().then((value) => print("hello post $value"));
              },
              child: const Text(
                "Post",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.pink,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
