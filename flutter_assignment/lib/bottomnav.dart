import 'package:flutter/material.dart';
import 'package:flutter_assignment/ListviewWithbuilder.dart';

void main() {
  runApp(MaterialApp(
    home: MyBottombar(),
  ));
}

class MyBottombar extends StatefulWidget {
  @override
  State<MyBottombar> createState() => _MyBottombarState();
}

class _MyBottombarState extends State<MyBottombar> {
  var bodies = <Widget>[
    // ListViewWithBuilder(),
    const Card(
      color: Colors.greenAccent,
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Text("Homepage"),
      ),
    ),
    const Card(
      color: Colors.greenAccent,
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Text("Search"),
      ),
    ),
    const Card(
      color: Colors.greenAccent,
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Text("Likes"),
      ),
    ),
    const Card(
      color: Colors.greenAccent,
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Text("Account"),
      ),
    ),
  ];

  int selectindex = 0;

  void onitemtap(int index) {
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Bar"),
      ),
      body: Center(child: bodies.elementAt(selectindex)),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.greenAccent,
          backgroundColor: Colors.red,
          onTap: onitemtap,
          currentIndex: selectindex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Likes"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: "Account")
          ]),
    );
  }
}
