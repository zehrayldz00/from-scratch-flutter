import 'package:flutter/material.dart';

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
    Post _post = new Post(title: "asda");
    _post .toJson();
    
    print(Post.fromJson(_post.toJson()));
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
