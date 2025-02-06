import 'package:flutter/material.dart';

class PageViewZGY extends StatefulWidget {
  const PageViewZGY({super.key});

  @override
  State<PageViewZGY> createState() => _PageViewZGYState();
}

class _PageViewZGYState extends State<PageViewZGY> {
  int _selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(child: _pageView),
          Expanded(child: _textBottomArea
          ),
        ],
      ),
    );
  }

  Widget get _pageView => PageView.builder(
      itemCount: 4,
      onPageChanged: _onPageChanged,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.grey,
            child: Center(
              child: Text("$index", style: TextStyle(fontSize: 35)),
            ),
          ),
        );
      });

  void _onPageChanged(int index){
    setState(() {
      _selectedPage = index;
    });
  }

  Widget get _textBottomArea => Container(
      child: _selectedPage == 3 ? Text("Selected == 3") : Text("AAAA")
  );
}
