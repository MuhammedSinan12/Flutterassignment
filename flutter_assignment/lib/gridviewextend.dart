import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: GridviewExtend(),
  ));
}

class GridviewExtend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 100,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        children: [
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.black45,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.cyan,
          ),
          Container(
            color: Colors.lime,
          ),
        ],
      ),
    );
  }
}
