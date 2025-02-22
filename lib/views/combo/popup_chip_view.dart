import 'package:flutter/material.dart';

class PopupChipView extends StatefulWidget {
  const PopupChipView({super.key});

  @override
  State<PopupChipView> createState() => _PopupChipViewState();
}

class _PopupChipViewState extends State<PopupChipView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        actions: [
          PopupMenuButton<Cars>(
              elevation: 10,
              onSelected: (car) {},
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("BMW"),
                      value: Cars.bmw,
                    ),
                    PopupMenuItem(
                      child: Text("Ford"),
                      value: Cars.ford,
                    ),
                    PopupMenuItem(
                      child: Text("Toyota"),
                      value: Cars.toyota,
                    )
                  ])
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            color: Colors.tealAccent,
            child: Wrap(
              children: [
                Chip(
                  label: Text("zehragul15@gmail.com"),
                  deleteIcon: Icon(Icons.close),
                  onDeleted: () {},
                  avatar: CircleAvatar(
                    child: Text("ZY"),
                  ),
                ),
                InputChip(
                  label: Text("Input Chipte selected vardır."),
                  selected: true,
                  //showCheckmark: false,
                  onPressed: () {},
                ),
                ChoiceChip(
                  label: Text("Bu bir seçim chipi, onSelected alır."),
                  selected: true,
                  onSelected: (val) {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

enum Cars { bmw, ford, toyota }
