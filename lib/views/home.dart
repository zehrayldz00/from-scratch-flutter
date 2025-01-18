import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with AutomaticKeepAliveClientMixin{
  String _data = "";
  late bool _isDark;

  late TextEditingController _textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isDark = false;
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: _isDark ? Colors.red : Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(_data),
              Visibility(
                visible: _isDark,
                child: Text("GÖRÜNÜYORUM", style: TextStyle(color: Colors.white),),
              ),
              Center(
                child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        _isDark = ! _isDark;
                      });
                    },
                    child: Icon(Icons.account_balance_wallet)),
              ),
            ],
          )
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
