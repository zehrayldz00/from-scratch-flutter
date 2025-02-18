import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fromscratchflutter/views/hero/hero_detail.dart';

class HeroView extends StatefulWidget {
  const HeroView({super.key});

  @override
  State<HeroView> createState() => _HeroViewState();
}

class _HeroViewState extends State<HeroView> {
  int? selectedValue;
  GlobalKey<ScaffoldState> key = GlobalKey(debugLabel: "scaffoldKey");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
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
          Expanded(
              child: Container(
            child: Card(
              child: DropdownButton<int>(
                  // neyi cast edeceğini yazman gerekiyor.
                  hint: Text("Select your currency"),
                  value: selectedValue,
                  items: [
                    DropdownMenuItem(child: Text("TR"), value: 1),
                    DropdownMenuItem(child: Text("EUR"), value: 6),
                    DropdownMenuItem(child: Text("USD"), value: 5),
                  ],
                  onChanged: (val) {
                    setState(() {
                      selectedValue = val;
                    });
                  }),
            ),
          )),
          Expanded(
              //tıklanması gereken icona tıklanmıyor??
              child: Column(
            children: [
              Hero(tag: "hero1", child: Icon(Icons.traffic)),
              ElevatedButton(
                onPressed: () {
                  key.currentState?.showBottomSheet((context) => Container(
                            height: 100,
                            child: CupertinoPicker(
                                itemExtent: 50,
                                onSelectedItemChanged: (val) {
                                  Navigator.of(context).pop(); // burası nasıl olacak?
                                },
                                children: [
                                  Text("1"),
                                  Text("2"),
                                  Text("3"),
                                ]),
                            color: Colors.redAccent,
                          ) // şu an görmüyor çünkü alt alta tanımlayınca genelde böyle oluyor o yüzden dışarda bir GlobalKey tanımladık.
                      );
                },
                child: null, //14.04
              )
            ],
          )),
        ],
      ),
    );
  }
}
