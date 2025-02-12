import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://picsum.photos/id/237/200/300'),
            Text("data"),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.details),
              label: Text("Read more.."),
            )
          ],
        ),
      ),
    );
  }
}
