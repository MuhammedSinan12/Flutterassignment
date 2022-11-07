import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Lottiess(),
  ));
}

class Lottiess extends StatelessWidget {
  const Lottiess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            // Load a Lottie file from your assets
            Lottie.asset('assets/images/125746-meditating-man.json'),

            // Load a Lottie file from a remote url
            Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_KoHGtQuRer.json'),

            // Load an animation and its images from a zip file
            // Lottie.asset('assets/images/125746-meditating-man.json'),
          ],
        ),
      ),
    );
  }
}
