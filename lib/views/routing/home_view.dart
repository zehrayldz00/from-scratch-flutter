import 'package:flutter/material.dart';
import 'package:fromscratchflutter/views/routing/detail_view.dart';


class HomeViewZGY extends StatefulWidget {
  const HomeViewZGY({super.key});

  @override
  State<HomeViewZGY> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeViewZGY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                  'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU'),
              Text("data"),
              ElevatedButton.icon(
                onPressed: () {
                  // 1. senaryo: Navigator.pushNamed(context, "/routedetail"); //arkadakini silmez
                  /* 2. senaryo: Navigator.pushNamedAndRemoveUntil(context, "/routedetail",
                      (Route<dynamic> route) => false); //arkadakini siler.*/
                  // 3, 4, 5. senaryolar:
                  String veli = "veli";
                  /* 3. senaryo: Navigator.pushNamedAndRemoveUntil(
                      context, NavigationRoute.HOME_DETAIL, (Route<dynamic> route) => false,
                      arguments: veli);*/
                  /* 4. senaryo: Navigator.pushReplacementNamed( //yer değiştirme yapar önceki yerine kendini ezer.
                      context, NavigationRoute.HOME_DETAIL, arguments: veli);*/
                  RouteSettings _routeSettings = RouteSettings(arguments: veli);
                  Navigator.push(context, MaterialPageRoute(builder : (context) => DetailView(), settings: _routeSettings ));
                },
                icon: Icon(Icons.details),
                label: Text("Read more.."),
              )
            ],
          ),
        ),
      ),
    );
  }
}
