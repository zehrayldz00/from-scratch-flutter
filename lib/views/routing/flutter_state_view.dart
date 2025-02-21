import 'package:flutter/material.dart';
import 'package:fromscratchflutter/views/advanced/card_widget.dart';
import 'package:http/http.dart' as http;

class AdvancedStateView extends StatefulWidget {
  const AdvancedStateView({super.key});

  @override
  State<AdvancedStateView> createState() => _AdvancedStateViewState();
}

class ColorBase {
  Color? color;
  ColorBase({this.color});
}

class _AdvancedStateViewState extends State<AdvancedStateView> {
  int selectedIndex = 0;
  Color selectedColor = Colors.white24;
  List<ColorBase> colors = [];

  Future getApiJohnName() async {
    return (await http.get(Uri.parse(
            "https://rest-8692d-default-rtdb.firebaseio.com/user.json")))
        .body;
  }

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 15; i++) {
      colors.add(ColorBase(color: Colors.white24));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: getApiJohnName(),
            builder: (context, snapshot){
              switch(snapshot.connectionState){
                case ConnectionState.done :
                  if(snapshot.hasData){
                    return body;
                  }
                  else {
                    return Center(
                      child: Text("Data not found"),
                    );
                  }
                default : return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
        )
    );
  }

  Widget get body => ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ColorCardWidget(
              onChanged: (color){
                  colors[index].color=color;
              }
              );
        },
      );
}
