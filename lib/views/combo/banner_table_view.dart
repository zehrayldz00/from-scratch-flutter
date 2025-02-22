import 'package:flutter/material.dart';

class BannerTableView extends StatefulWidget {
  const BannerTableView({super.key});

  @override
  State<BannerTableView> createState() => _BannerTableViewState();
}

class _BannerTableViewState extends State<BannerTableView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          MaterialBanner(
            backgroundColor: Colors.redAccent,
            leading: Icon(Icons.flash_off),
            contentTextStyle: TextStyle(fontSize: 35),
            content: Text("hello zehra"),
            actions: [
              Icon(Icons.android),
              Icon(Icons.ios_share),
              Icon(Icons.flag),
              Icon(Icons.card_giftcard)
            ],
          ),
          DataTable(
              //admin panelli yapılar genelde mobil uygulamalrda olmaz ama bunun için de bir kolaylık sunulmuş.
              onSelectAll: (val) {},
              sortAscending: false,
              sortColumnIndex: 0,
              columns: [
                DataColumn(
                    label: Text("1"),
                    numeric: true,
                    onSort: (index, change) {
                      print("$index - $change");
                    }),
                DataColumn(
                  label: Text("2"),
                ),
                DataColumn(
                  label: Text("3"),
                ),
                DataColumn(
                  label: Text("4"),
                ),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text("R1")),
                    DataCell(Text("R2")),
                    DataCell(Text("R3")),
                    DataCell(Text("R4")),
                  ], //selected: true,
                  //onSelectChanged: (val){}
                ),
                DataRow(cells: [
                  DataCell(Text("C1")),
                  DataCell(Text("C2")),
                  DataCell(Text("C3")),
                  DataCell(Text("C4")),
                ]),
              ])
        ],
      ),
    );
  }
}
