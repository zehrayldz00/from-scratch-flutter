import 'package:flutter/material.dart';
import 'package:fromscratchflutter/views/hero/hero_detail.dart';

class HeroView extends StatefulWidget {
  const HeroView({super.key});

  @override
  State<HeroView> createState() => _HeroViewState();
}

class _HeroViewState extends State<HeroView> {
  late int selectedValue;
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
          Expanded(child: Container(
            child: Card(
              child: DropdownButton <int> ( // neyi cast edeceğini yazman gerekiyor.
                hint: Text("Select your currency"),
                value: selectedValue,
                  items: [
                    DropdownMenuItem(child: Text("TR"),value: 1),
                    DropdownMenuItem(child: Text("EUR"),value: 6),
                    DropdownMenuItem(child: Text("USD"),value: 5),
                  ],
                  onChanged: (val){
                  setState(() {
                    //selectedValue = val! ?? selectedValue = 1;
                  });
                  }
              ),
            ),
          )),
          Expanded(
            //tıklanması gereken icona tıklanmıyor??
            child: Hero(tag: "hero1", child: Icon(Icons.traffic)),
          ),
        ],
      ),
    );
  }
}
