import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/book.dart';

class FireBaseBookView extends StatefulWidget {
  const FireBaseBookView({super.key});

  @override
  State<FireBaseBookView> createState() => _FireBaseBookViewState();
}

class _FireBaseBookViewState extends State<FireBaseBookView> {
  TextEditingController? _bookNameTEC;
  TextEditingController? _bookIdTEC;
  TextEditingController? _bookAuthorTEC;

  @override
  void initState() {
    super.initState();
    _bookNameTEC = new TextEditingController();
    _bookIdTEC = new TextEditingController();
    _bookAuthorTEC = new TextEditingController();
  }

  Future<bool> _postBookData() async {
    final _book = new Book();

    _book.author = _bookAuthorTEC?.text;
    _book.id = int.parse(_bookIdTEC!.text);
    _book.title = _bookNameTEC?.text;

    final response = await http.post(Uri.parse
      ("https://rest-8692d-default-rtdb.firebaseio.com/.json"),
        body : jsonEncode(_book.toJson())
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      print(response.body);
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                      child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          controller: _bookNameTEC,
                          decoration: InputDecoration(labelText: "Name"),
                        ),
                        TextField(
                          controller: _bookIdTEC,
                          decoration: InputDecoration(labelText: "ID"),
                        ),
                        TextField(
                          controller: _bookAuthorTEC,
                          decoration: InputDecoration(labelText: "Author"),
                        ),
                        IconButton(
                            onPressed: () async {
                              final _result = await _postBookData();
                              print(_result);
                            },
                            icon: Icon(
                              Icons.send,
                              color: Colors.blue,
                            )),
                      ],
                    ),
                  ));
                });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  AppBar get _appBar => AppBar(
        title: Text("Post Book View"),
        backgroundColor: Colors.teal,
      );
}
