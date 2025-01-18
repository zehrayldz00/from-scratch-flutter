import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class HttpHelloView extends StatefulWidget {
  const HttpHelloView({super.key});

  @override
  State<HttpHelloView> createState() => _HttpHelloViewState();
}

class _HttpHelloViewState extends State<HttpHelloView> {
  late bool isHaveData;
  late String data;

  @override
  void initState() {
    super.initState();
  }

  Future getApiJohnName () async {
    return (await http
        .get(Uri.parse("https://rest-8692d-default-rtdb.firebaseio.com/user.json")))
    .body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: getApiJohnName(),
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData){
                  final Map <String, dynamic> data =  json.decode(snapshot.data as String);
                  return Text(data['name'] ?? "Name not found");
                }
                else{
                  return Text("You have error. Look at api.");
                }
              }
              else if(snapshot.connectionState == ConnectionState.waiting){
                return CircularProgressIndicator();
              } else{
                return Text("You have error. Are you sure api?");
              }
            }
        ),
      ),
    );
  }
}
