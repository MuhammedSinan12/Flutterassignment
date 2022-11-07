// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: StaggeredImages(),
//   ));
// }

// class StaggeredImages extends StatelessWidget {
//   final List<StaggeredTile> _cTile = <StaggeredTile>[
//     const StaggeredTile.count(2, 1),
//   ];

//   final List<Widget> _imgTile = <Widget>[
//     const Image(
//         image: NetworkImage(
//             "https://images.unsplash.com/photo-1548217395-6c6095abb49c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Staggered Images")),
//       body: StaggeredGridView.count(
//         crossAxisCount: 3,
//         mainAxisSpacing: 2,
//         staggeredTiles: _cTile,
//         children: _imgTile,
//       ),
//     );
//   }
// }

// class BackGroundss extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final Color? bgcolor ;
//     final ImageData;

//     BackGroundss({this.bgcolor,required this.ImageData});
//     return Card(
//       color: bgcolor,
//       child: Image(image: ImageData),
//     );
//   }
// }
