import 'package:flutter/material.dart';

class PageViewZGY extends StatefulWidget {
  const PageViewZGY({super.key});

  @override
  State<PageViewZGY> createState() => _PageViewZGYState();
}

class _PageViewZGYState extends State<PageViewZGY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
              child: PageView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return Text("1");
                  }
              ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
