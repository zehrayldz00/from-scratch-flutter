import 'package:flutter/material.dart';

class SliverView extends StatefulWidget {
  const SliverView({super.key});

  @override
  State<SliverView> createState() => _SliverViewState();
}

class _SliverViewState extends State<SliverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        //normalde olan her sey var ama ekstra olarak sliver componentlerine erişebiliyoruz.
        slivers: [
          //normal appbar atarsak patlar cünkü sliver devrede SliverAppBar kullanılır.
          SliverAppBar(
              backgroundColor: Colors.tealAccent,
              expandedHeight: 200,
              floating: true,
              pinned: true,
              snap :true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Hello",
                ),
                collapseMode: CollapseMode.parallax,
                centerTitle: false,
                background: Image.network(
                  "https://picsum.photos/200/300",
                  fit: BoxFit.fill,
                ),
              )),
          //normal componentleri bunun içinde kullanıyoruz.
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          ),
          /*SliverGrid.count(
            crossAxisCount: 4,
            children: [
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
            ],
          ),*/
          SliverGrid.extent(
            maxCrossAxisExtent: 50,
            children: [
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
            ],
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (index, context) {
              return Container(
                color: Colors.orange,
                height: 100,
                child: Card(child: Text("bu bir container")),
              );
            },
            childCount: 10,
          ))
        ],
      ),
    );
  }
}
