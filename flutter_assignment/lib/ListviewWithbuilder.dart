import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewWithBuilder(),
  ));
}

class ListViewWithBuilder extends StatelessWidget {
  var datas = <String>["Data1", "Data2", "Data3"];
  var colors = <int>[600, 500, 200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List1"),
      ),
      body: ListView.builder(itemBuilder: (BuildContext cntx, int index) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Container(
            height: 50,
            color: Colors.amber[colors[index]],
            child: Center(
              child: Text(datas[index]),
            ),
          ),
        );
      }),
    );
  }
}
