import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ModalRoute.of(context)!.settings.arguments as String? ?? "Hataverdim"),
        backgroundColor: Colors.pink,
        actions: [
          Chip(
            onDeleted: () {
              //1 ve 3. senaryo:
              Navigator.pop(context);
              // 2. senaryo: print(Navigator.canPop(context)); //çıktısı false
            },
            label: Text("Back"),
            elevation: 10,
          )
        ],
      ),
      body: Text("Selam"),
    );
  }
}
