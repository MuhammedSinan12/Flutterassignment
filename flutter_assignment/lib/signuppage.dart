import 'package:flutter/material.dart';
import 'package:flutter_assignment/home.dart';
import 'package:flutter_assignment/login_with_validation.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignupScreen extends StatelessWidget {
  var formkey1 = GlobalKey<FormState>();
  TextEditingController pass = TextEditingController();
  TextEditingController cpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formkey1,
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
            validator: (email) {
              if (email!.isEmpty || !email.contains('@')) {
                return "enter a valid email";
              } else {
                return null;
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: pass,
            decoration: const InputDecoration(
                labelText: "Password", border: OutlineInputBorder()),
            validator: (password) {
              if (password!.isEmpty || password.length < 6) {
                return "password is less than 6";
              } else {
                return null;
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: cpass,
            decoration: const InputDecoration(
                labelText: "Confirm Password", border: OutlineInputBorder()),
            validator: (password) {
              if (password!.isEmpty ||
                  password.length < 6 ||
                  pass.text != cpass.text) {
                return "password is less than 6";
              } else {
                return null;
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {
                final valid = formkey1.currentState!.validate();

                if (valid) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                } else {
                  Fluttertoast.showToast(
                      msg: "Invalid Username/Password",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                }
              },
              child: const Text("SignUp")),
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
