import 'package:flutter/material.dart';
import 'package:flutter_assignment/login_with_validation.dart';
import 'package:flutter_assignment/signuppage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // Timer(Duration(seconds: 3), (() {
    //   Navigator.pushReplacement(context,
    //       MaterialPageRoute(builder: ((context) => LoginWithValidation())));
    // }));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Hello There!..',
                style: TextStyle(
                    color: Color.fromARGB(255, 7, 13, 18),
                    fontWeight: FontWeight.w500,
                    fontSize: 60,
                    decoration: TextDecoration.none),
              )),
          Container(
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '''Automatic identity Verification which enable you to 
                   verify your identity''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          ),
          Container(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/key.png",
                  height: 300,
                )
              ],
            )),
          ),
          Container(
            // height: 18.0,
            // width: 18.0,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginWithValidation()));
                },
                child: const Text(
                  "LOGIN",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
          Container(
            // height: 18.0,
            // width: 18.0,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupScreen(),
                      ));
                },
                child: const Text("SignUp"),
              ),
            ),
          )
        ]));
  }
}
