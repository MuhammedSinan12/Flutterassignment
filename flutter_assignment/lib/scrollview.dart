import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScrollableAppBAr extends StatefulWidget {
  const ScrollableAppBAr({super.key});

  @override
  State<ScrollableAppBAr> createState() => _ScrollableAppBArState();
}

class _ScrollableAppBArState extends State<ScrollableAppBAr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          // stretch: true,
          floating: true,
          pinned: true,
          title: const Text("Scrollable"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
          bottom: AppBar(
              title: Container(
            width: double.infinity,
            height: 40,
            color: Colors.white,
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt_outlined)),
            ),
          )),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          const SizedBox(
            height: 400,
            child: Center(child: Text("Hellooo")),
          ),
          Container(
              height: 600, color: Colors.blueAccent, child: Text("hgfhg")),
          Container(
            height: 600,
            color: Colors.green,
            child: Center(child: Text("hgfhg")),
          ),
          Container(height: 600, color: Colors.red, child: Text("hgfhg")),
        ]))
      ]),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ScrollableAppBAr(),
  ));
}
