import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: NormalGrid(),
  ));
}

class NormalGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
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
        ],
      ),
    );
  }
}
