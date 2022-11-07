import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab"),
            actions: [
              const Icon(Icons.search),
              PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(child: Text("Settings")),
                    const PopupMenuItem(child: Text("Version")),
                    const PopupMenuItem(child: Text("Help")),
                  ];
                },
              )
            ],
            backgroundColor: const Color.fromARGB(255, 27, 221, 175),
            bottom: const TabBar(tabs: [
              Tab(
                iconMargin: EdgeInsets.all(20),
                icon: Icon(Icons.camera_alt_outlined),
              ),
              Tab(
                // icon: Icon(Icons.chat),
                text: "CHATS",
              ),
              Tab(
                // icon: Icon(Icons.account_box_outlined),
                text: "STATUS",
              ),
              Tab(
                // icon: Icon(Icons.call),
                text: "CALLS",
              ),
            ]),
          ),
          body: TabBarView(children: []),
        ));
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Tabs(),
  ));
}
