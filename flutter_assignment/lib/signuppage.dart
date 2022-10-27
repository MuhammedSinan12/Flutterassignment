import 'package:flutter/material.dart';
import 'package:flutter_assignment/login_with_validation.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      child: ListView(children: [
        const Center(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "SIGNUP",
            style: TextStyle(fontSize: 30),
          ),
        )),
        const Center(child: Text("Create an account,it's free")),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
                labelText: "Username", border: OutlineInputBorder()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
                labelText: "Password", border: OutlineInputBorder()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
                labelText: "Confirm Password", border: OutlineInputBorder()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: () {}, child: const Text("SignUp")),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginWithValidation(),
                  ));
            },
            child: const Text("Already have an account?Login"))
      ]),
    ));
  }
}
