import 'package:flutter/material.dart';
import 'package:flutter_assignment/main.dart';
import 'package:flutter_assignment/signuppage.dart';

class LoginWithValidation extends StatelessWidget {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Form(
          key: formkey,
          child: ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Login",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
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
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Password", border: OutlineInputBorder()),
                    validator: (text) {
                      if (text!.isEmpty || text.length < 6) {
                        return "password is less than 6";
                      } else {
                        return null;
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();

                      if (valid) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      } else {
                        print("Login Failure");
                      }
                    },
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          )),
    );
  }
}
