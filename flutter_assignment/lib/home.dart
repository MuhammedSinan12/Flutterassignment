import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: ListView(children: [
        const SizedBox(
          height: 25,
        ),
        const Center(
            child: Text(
          "List of Contacts",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        )),
        const ListTile(
          title: Text("Contact 1"),
          tileColor: Colors.cyan,
          subtitle: Text("8776465768"),
          leading: CircleAvatar(child: Icon(Icons.contact_phone)),
          trailing: Icon(Icons.dialer_sip_rounded),
        ),
        const Divider(
          thickness: 4,
        ),
        ListTile(
          title: const Text("Contact 2"),
          subtitle: const Text("7656536767"),
          leading: const CircleAvatar(child: Icon(Icons.contact_phone)),
          trailing: Wrap(children: const [
            Icon(Icons.sms),
            Icon(
              Icons.dialer_sip_rounded,
              color: Colors.indigo,
            ),
          ]),
        ),
        const Card(
          child: ListTile(
            title: Text("Contact 3"),
            subtitle: Text("6573928367"),
            leading: CircleAvatar(child: Icon(Icons.contact_phone)),
            trailing: Icon(Icons.dialer_sip_rounded),
          ),
        ),
      ]),
    );
  }
}
