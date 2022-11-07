import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: GridviewCustom(),
  ));
}

class GridviewCustom extends StatelessWidget {
  var imagess = [
    "https://images.unsplash.com/photo-1666468986393-6777f6dc2a16?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2008&q=80",
    "https://images.unsplash.com/photo-1666468986393-6777f6dc2a16?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2008&q=80",
    "https://images.unsplash.com/photo-1666468986393-6777f6dc2a16?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2008&q=80",
    "https://images.unsplash.com/photo-1666468986393-6777f6dc2a16?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2008&q=80",
    "https://images.unsplash.com/photo-1666468986393-6777f6dc2a16?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2008&q=80",
    "https://images.unsplash.com/photo-1666468986393-6777f6dc2a16?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2008&q=80",
    "https://images.unsplash.com/photo-1666468986393-6777f6dc2a16?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2008&q=80",
    "https://images.unsplash.com/photo-1666468986393-6777f6dc2a16?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2008&q=80"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomGridView"),
      ),
      body: GridView.custom(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Image.network(
              imagess[index],
              width: 50,
              height: 50,
            );
          },
          childCount: 8,
        ),
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
      ),
    );
  }
}
