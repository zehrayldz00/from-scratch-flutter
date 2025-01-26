import 'package:flutter/material.dart';

class Counter extends StatefulWidget {

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int counter = 0;

  void arttir(){
    setState(() {
      counter++; //state güncellendi
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sayaç Uygulaması")),
      body: Center(child: Text("Sayaç : $counter")),
      floatingActionButton : FloatingActionButton(
          onPressed: arttir,
          child: Icon(Icons.add),
      ),
    );
  }
}
