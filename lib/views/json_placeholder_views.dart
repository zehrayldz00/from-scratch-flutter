import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../model/post.dart';

class JsonPlaceholderViews extends StatefulWidget {
  const JsonPlaceholderViews({super.key});

  @override
  State<JsonPlaceholderViews> createState() => _JsonPlaceholderViewsState();
}

class _JsonPlaceholderViewsState extends State<JsonPlaceholderViews> {

  @override
  void initState() {
    super.initState();
  }

  Future <PostData?> getJsonPlaceHolderData() async {
    final _response =
      await http.get (Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
      if(_response.statusCode == 404){
        return null;
      }
    final _mapJson = json.decode(_response.body);
    var post = PostData.fromJson(_mapJson);
    return post;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(alignment: Alignment.center, child:_placeHolderDatasWidget),
    );
  }

  Widget get _placeHolderDatasWidget => FutureBuilder <PostData?> (
  future: getJsonPlaceHolderData(),
  builder:(context, snapshot){
    if(snapshot.hasData){
      return ListTile(
        title: Text(snapshot.data?.title ?? "No title"),
        subtitle: Text(snapshot.data?.body ?? "No body"),
      );
    } else {
      return Center(child: CircularProgressIndicator(),);
    }
  } );
}