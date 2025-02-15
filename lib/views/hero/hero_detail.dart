import 'package:flutter/material.dart';

class HeroDetailView extends StatelessWidget {
  const HeroDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Hero(tag: "hero1", child: Material(child: Text("Welcome"))),
      ),
    );
  }
}
