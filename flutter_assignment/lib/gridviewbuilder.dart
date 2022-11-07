import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: GridViewBuilder(),
  ));
}

class GridViewBuilder extends StatelessWidget {
  var images = [
    " https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
    " https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
    " https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MyGrid")),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Image.network(images[index]);
        },
      ),
    );
  }
}
