import 'package:flutter/material.dart';
import 'package:fromscratchflutter/views/home.dart';

class TabbarView extends StatefulWidget {
  const TabbarView({super.key});

  @override
  State<TabbarView> createState() => _TabbarViewState();
}

class _TabbarViewState extends State<TabbarView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.filter_drama),
            onPressed: (){}),
        //appBar: AppBar(
          //bottom:
        bottomNavigationBar:
          TabBar(
              tabs: <Widget>[
                Tab(child: Icon(Icons.filter_1),),
                Tab(child: Icon(Icons.filter_2),),
                //Tab(child: Icon(Icons.filter_3),),
              ],
          ),
       // ),
        body: TabBarView(
            children: <Widget>[
              HomeView(),
              Container(color: Colors.blue,),
              Container(color: Colors.grey,)
            ]
        ),
      ),
    );
  }
}

