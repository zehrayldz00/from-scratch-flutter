import 'package:flutter/material.dart';
import 'package:fromscratchflutter/widgets/list_item.dart';
import 'package:fromscratchflutter/widgets/shadow.dart';

class UIBaseView extends StatefulWidget {
  const UIBaseView({super.key});

  @override
  State<UIBaseView> createState() => _UIBaseViewState();
}

class _UIBaseViewState extends State<UIBaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      resizeToAvoidBottomInset: false,
      appBar:AppBar(
        title: Text("s"),
        leading: Icon(Icons.menu),
        actions: [IconButton(
            onPressed: (){},
            icon: Icon(Icons.settings)
        )],

      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Text("Bottom Navigation"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
              context : context,
              builder : (context){
                return Container(
                  height: 300,
                  color: Colors.white,
                );
              }
            );
          },
        child: Icon(Icons.favorite),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 8.0,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(),
            CardListItem(title: "A" , icons:Icons.abc),
            CardListItem(
                title: "A" ,
                icons:Icons.accessibility_new
            ),
            ShadowWidget(
                child: CardListItem(
                    title: "shadow", icons: Icons.account_balance
                ),
            ),
            CardListItem(title: "A" , icons:Icons.shop),
            ElevatedButton(
                onPressed: (){},
              child: Text("bas"),
            )
          ],
        ),
      ) ,
    );
  }
}
