import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StaggeredGridview(),
  ));
}

class StaggeredGridview extends StatelessWidget {
  final List<StaggeredTile> _cardTile = const <StaggeredTile>[
    StaggeredTile.count(4, 1),
    StaggeredTile.count(2, 1),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 3),
  ];

  final List<Widget> _listTile = <Widget>[
    BackgroundTile(
      bColor: Colors.red,
      iconData: Icons.home,
    ),
    BackgroundTile(
      bColor: const Color.fromARGB(255, 54, 244, 225),
      iconData: Icons.text_decrease,
    ),
    BackgroundTile(
      bColor: const Color.fromARGB(255, 70, 244, 54),
      iconData: Icons.analytics,
    ),
    BackgroundTile(
      bColor: const Color.fromARGB(255, 222, 244, 54),
      iconData: Icons.ac_unit,
    ),
    BackgroundTile(
      bColor: const Color.fromARGB(255, 79, 54, 244),
      iconData: Icons.apple,
    ),
    BackgroundTile(
      bColor: const Color.fromARGB(255, 181, 54, 244),
      iconData: Icons.mobile_friendly,
    ),
    BackgroundTile(
      bColor: Colors.red,
      iconData: Icons.help_sharp,
    ),
    BackgroundTile(
      bColor: const Color.fromARGB(255, 244, 225, 54),
      iconData: Icons.holiday_village_sharp,
    ),
    BackgroundTile(
      bColor: const Color.fromARGB(255, 98, 54, 244),
      iconData: Icons.tsunami,
    ),
    BackgroundTile(
      bColor: const Color.fromARGB(255, 244, 54, 127),
      iconData: Icons.factory_sharp,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered Grid"),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: _cardTile,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _listTile,
      ),
    );
  }
}

class BackgroundTile extends StatelessWidget {
  final Color? bColor;
  final IconData iconData;

  BackgroundTile({this.bColor, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bColor,
      child: Icon(
        iconData,
        color: Color.fromARGB(255, 18, 18, 19),
      ),
    );
  }
}
