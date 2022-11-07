import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListWithSeperate(),
  ));
}

class ListWithSeperate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var datas = <String>[
      "Data1",
      "Data1",
      "Data1",
    ];
    var colors = <int>[600, 400, 200];
    var sepcolor = <int>[500, 300, 150];
    return Scaffold(
      appBar: AppBar(title: const Text("My List")),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return Card(
              color: Colors.cyan[colors[index]],
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Text(datas[index]),
              ),
            );
          }),
          separatorBuilder: ((context, index) {
            return Divider(
              thickness: 5,
              color: Colors.green[sepcolor[index]],
            );
          }),
          itemCount: datas.length),
    );
  }
}
