import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyyWidget extends StatefulWidget {

  @override
  State<MyyWidget> createState() => _MyyWidgetState();
}

// ValueNotifier ile veri döndürme
class _MyyWidgetState extends State<MyyWidget> {
  final ValueNotifier<String> data = ValueNotifier("Yükleniyor...");

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future <void> fetchData() async{
    final response = await http.get(Uri.parse("https://example.com"));
    data.value = response.body;
  }

  @override
  void dispose() {
    data.dispose(); //bellek sızıntısını önlemek için
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ValueListenableBuilder<String>(
          valueListenable: data,
          builder: (context , value, child){
            return value == "Yükleniyor..." ? CircularProgressIndicator() : Text(value);
    },
    )
    );
  }
}
