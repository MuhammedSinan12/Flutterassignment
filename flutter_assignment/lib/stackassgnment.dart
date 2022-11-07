import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackAssgnmnt(),
  ));
}

class StackAssgnmnt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StackImage"),
        actions: const [Icon(Icons.favorite_border), Icon(Icons.more_vert)],
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
          ),
          children: [
            Stack(children: [
              Container(
                // width: 300,
                // height: 300,
                child: Image.network(
                    "https://images.unsplash.com/photo-1666468986393-6777f6dc2a16?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2008&q=80"),
              ),
              Positioned(
                top: 200,
                left: 20,
                child: Container(
                  width: 100,
                  color: Colors.black87,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "bear",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              )
            ]),
            Stack(
              children: [
                Container(
                  // width: 300,
                  // height: 300,
                  child: Image.network(
                      "https://images.unsplash.com/photo-1666812272845-c5dcaae45453?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                ),
                Positioned(
                  top: 200,
                  left: 20,
                  child: Container(
                    width: 100,
                    color: Colors.black87,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "Trees",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  // width: 300,
                  // height: 300,
                  child: Image.network(
                      "https://images.unsplash.com/photo-1666624832822-70a3a0eb4e88?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                ),
                Positioned(
                  top: 200,
                  left: 20,
                  child: Container(
                    width: 100,
                    color: Colors.black87,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "Tokyo",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  // width: 300,
                  // height: 300,
                  child: Image.network(
                      "https://images.unsplash.com/photo-1661211221402-efd21ff997c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80"),
                ),
                Positioned(
                  top: 200,
                  left: 20,
                  child: Container(
                    width: 100,
                    color: Colors.black87,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "Vespa",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ]),
    );
  }
}
