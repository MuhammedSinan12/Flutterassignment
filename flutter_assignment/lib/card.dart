import 'package:flutter/material.dart';

class Cardui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // width: 400,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.home,
                              size: 100,
                            ),
                            Text("jvhmvnvjh")
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  // width: 400,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.add_alert_outlined,
                              size: 100,
                            ),
                            Text("bjjkgfdghdf")
                          ],
                        )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // width: 400,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.linked_camera,
                              size: 100,
                            ),
                            Text("jvhmvnvjh")
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  // width: 400,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.star_border_purple500_sharp,
                              size: 100,
                            ),
                            Text("bjjkgfdghdf")
                          ],
                        )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // width: 400,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.redAccent),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.wifi_off_outlined,
                              size: 100,
                            ),
                            Text("jvhmvnvjh")
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  // width: 400,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.book,
                              size: 100,
                            ),
                            Text("bjjkgfdghdf")
                          ],
                        )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // width: 400,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.purpleAccent),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.call,
                              size: 100,
                            ),
                            Text("jvhmvnvjh")
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  // width: 400,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.teal),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.mail_outline,
                              size: 100,
                            ),
                            Text("bjjkgfdghdf")
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Cardui(),
  ));
}
