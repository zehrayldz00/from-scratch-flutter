import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}
// setState() ile Future kullanma yöntemi
class _MyWidgetState extends State<MyWidget> {
  String? data;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future <void> fetchData() async{
    final response = await http.get(Uri.parse("https://example.com"));
    setState(() {
      data = response.body;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLoading
      ? CircularProgressIndicator()
          :Text(data ?? "Veri yok"),
    );
  }
}
