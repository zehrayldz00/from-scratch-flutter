import 'package:flutter/material.dart';

class CollapseView extends StatefulWidget {
  const CollapseView({super.key});

  @override
  State<CollapseView> createState() => _CollapseViewState();
}

class _CollapseViewState extends State<CollapseView> {
  List<String>? datas;

  @override
  void initState() {
    super.initState();
    datas = [];
    for (var i = 0; i < 10; i++) {
      datas?.add("$i");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children:[Card(
            color: Colors.pink,
            child: ExpansionTile(
              title: Text("Counter", style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.tealAccent,
              children: [
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: datas?.length,
                  itemBuilder: (context, index) {
                    return SizedBox(height: 100, child: Text(datas![index]));
                  },
                )
              ],
            ),
          ),]
        ),
      ),
    );
  }
}
