import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContactScreen(),
  ));
}

class ContactScreen extends StatelessWidget {
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
        ListTile(
          title: const Text("Contact 1"),
          tileColor: Colors.cyan,
          subtitle: const Text("8776465768"),
          leading: const CircleAvatar(child: Icon(Icons.contact_phone)),
          trailing: Wrap(children: const [
            Icon(Icons.sms),
            Icon(Icons.dialer_sip_rounded)
          ]),
        ),
        const Divider(
          thickness: 2,
        ),
        ListTile(
          title: const Text("Contact 2"),
          tileColor: Colors.cyan,
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
        const Divider(
          thickness: 2,
        ),
        ListTile(
          title: const Text("Contact 3"),
          tileColor: Colors.cyan,
          subtitle: const Text("6573928367"),
          leading: const CircleAvatar(child: Icon(Icons.contact_phone)),
          trailing: Wrap(children: const [
            Icon(Icons.sms),
            Icon(Icons.dialer_sip_rounded)
          ]),
        ),
        const Divider(
          thickness: 2,
        ),
        ListTile(
          title: const Text("Contact 4"),
          tileColor: Colors.cyan,
          subtitle: const Text("6512328367"),
          leading: const CircleAvatar(child: Icon(Icons.contact_phone)),
          trailing: Wrap(children: const [
            Icon(Icons.sms),
            Icon(Icons.dialer_sip_rounded)
          ]),
        ),
      ]),
    );
  }
}
