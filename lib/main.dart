import 'package:flutter/material.dart';
import 'package:fromscratchflutter/httpHello.dart';
import 'package:fromscratchflutter/preferences/shared_view.dart';
import 'package:fromscratchflutter/views/collapse_view.dart';
import 'package:fromscratchflutter/views/combo/banner_table_view.dart';
import 'package:fromscratchflutter/views/combo/popup_chip_view.dart';
import 'package:fromscratchflutter/views/file_download_view.dart';
import 'package:fromscratchflutter/views/hero/hero_detail.dart';
import 'package:fromscratchflutter/views/hero/hero_view.dart';
import 'package:fromscratchflutter/views/json_placeholder_views.dart';
import 'package:fromscratchflutter/views/page_view.dart';
import 'package:fromscratchflutter/views/routing/detail_view.dart';
import 'package:fromscratchflutter/views/routing/flutter_state_view.dart';
import 'package:fromscratchflutter/views/routing/home_view.dart';
import 'package:fromscratchflutter/views/sliver_view.dart';
import 'package:fromscratchflutter/widgets/shadow.dart';
import 'package:fromscratchflutter/views/firebase_view.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute : "/bannertable",
      routes : {
        "/http" : (context) => HttpHelloView(),
        "/sliver" : (context) => SliverView(),
        "/pageview" : (context) => PageViewZGY(),
        "/home": (context) => JsonPlaceholderViews(),
        "/": (context) => HomeViewZGY(),
        "/collapse" : (context) => CollapseView(),
        "/firebase": (context) => FireBaseBookView(),
        "/file" : (context) => FileDownloadView(),
        "/routehome" : (context) => HomeViewZGY(),
        "/routedetail" : (context) => DetailView(),
        "/hero" : (context) => HeroView(),
        "/herodetail" : (context) => HeroDetailView(),
        "/shared" : (context) => SharedView(),
        "/advancedstate" : (context) => AdvancedStateView(),
        "/popupchip" : (context) => PopupChipView(),
        "/bannertable" : (context) => BannerTableView()
      },
        /*onGenerateRoute: (RouteSettings routeSettings){
          if (routeSettings.name == "/veli"){
            return MaterialPageRoute(builder: (context) => SliverView(),);
          }
          return null;
        }*/

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

