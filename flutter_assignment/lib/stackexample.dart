import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: StackExample(),
  ));
}

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.cyan,
              width: 400,
              height: 400,
            ),
            Positioned(
              left: 30,
              top: 30,
              child: Container(
                color: Colors.indigo,
                width: 80,
                height: 80,
              ),
            ),
            Positioned(
              right: 30,
              bottom: 30,
              child: Container(
                color: Colors.green,
                width: 60,
                height: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
