import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedView extends StatefulWidget {
  const SharedView({super.key});

  @override
  State<SharedView> createState() => _SharedViewState();
}

class _SharedViewState extends State<SharedView> {

  SharedPreferences? preferences;
  String data = " ";

  @override
  void initState() {
    super.initState();
    getLocalData();
  }

  void getLocalData() async{
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.android, size:100, color: Colors.green,),
            Text(data),
            TextButton(
                onPressed: (){
                  setState(() {
                    data = preferences!.getString("key")!;
                  });
                  //preferences?.clear(); // tüm veritabanını sıfırlar.
                },
                child: Text("Get shared data", style: TextStyle(color: Colors.blue),)
            ),
            TextButton(
                onPressed: (){
                  preferences?.setString(zehra.val1.toString(), "zehra");
                },
                child: Text("Save shared data", style: TextStyle(color: Colors.blue),)
            )

          ],
        ),
      ),
    );
  }
}
enum zehra{
  val1
}
