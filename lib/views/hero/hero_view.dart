import 'package:flutter/material.dart';
import 'package:fromscratchflutter/views/hero/hero_detail.dart';

class HeroView extends StatefulWidget {
  const HeroView({super.key});

  @override
  State<HeroView> createState() => _HeroViewState();
}

class _HeroViewState extends State<HeroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
                child: InkWell(
                    onTap: () {
                      // Burada neden pushNamed kullanılamıyor?
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HeroDetailView()));
                    },
                    child: Text("Welcome"))),
          ),
          Expanded(child: Placeholder()),
          Expanded(
            //tıklanması gereken icona tıklanmıyor??
            child: Hero(tag: "hero1", child: Icon(Icons.traffic)),
          ),
        ],
      ),
    );
  }
}
