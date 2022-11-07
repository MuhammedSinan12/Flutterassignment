import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Expansionn(),
  ));
}

class Expansionn extends StatelessWidget {
  const Expansionn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ExpansionTile")),
      body: const ExpansionTile(
        title: Text("Colors"),
        subtitle: Text("Expand This Tile"),
        children: [
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green),
            title: Text("Green"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.red),
            title: Text("Red"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.cyan),
            title: Text("Cyan"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue),
            title: Text("Blue"),
          ),
        ],
      ),
    );
  }
}
