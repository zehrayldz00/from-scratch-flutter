import 'package:flutter/material.dart';
import 'package:fromscratchflutter/views/form_view.dart';
import 'package:fromscratchflutter/views/json_placeholder_views.dart';
import 'package:fromscratchflutter/widgets/shadow.dart';
import 'package:fromscratchflutter/views/firebase_view.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute : "/firebase",
      routes : {
        "/home": (context) => JsonPlaceholderViews(),
        "/": (context) => FormView(),
        "/firebase": (context) => FireBaseBookView(),
      },
    );
  }
}

class TutorialOnePage extends StatelessWidget {
  const TutorialOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowWidget(
      child: Text("SELAM", style: TextStyle(
        color: Color(0xfff36c4d),
        fontSize: 60,
        fontFamily: "Pixel",
      ),),
    );
  }
}
class TutorialButtonPage extends StatelessWidget {
  const TutorialButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (){},
      child: ShadowWidget(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.black] , stops: [0.0,0.5]))
        ),
      ),
      );
  }
}

