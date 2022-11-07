import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class StackGridassign extends StatelessWidget {
  const StackGridassign({super.key});

  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> _staggeredStyles = [
      const StaggeredTile.count(1, 1),
      const StaggeredTile.count(1, 2),
      const StaggeredTile.count(1, 2),
    ];

    List<Tiles> tiles = [
      const Tiles(
          links:
              "https://images.unsplash.com/photo-1526911799633-84b785eb1f6a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
          heading: "Trees",
          subhead: "Road"),
      const Tiles(
          links:
              "https://images.unsplash.com/photo-1570143675316-51a19f90a943?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1888&q=80",
          heading: "Wallpaper",
          subhead: "wallpaper"),
      const Tiles(
          links:
              "https://images.unsplash.com/photo-1667730800025-4537d0a9e676?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
          heading: "Cafe",
          subhead: "Dine in"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered Grid Assignment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          staggeredTiles: _staggeredStyles,
          children: tiles,
        ),
      ),
    );
  }
}

class Tiles extends StatelessWidget {
  const Tiles(
      {super.key,
      required this.links,
      required this.heading,
      required this.subhead});

  final String links;
  final String heading;
  final String subhead;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(links),
          const SizedBox(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(subhead),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackGridassign(),
  ));
}
