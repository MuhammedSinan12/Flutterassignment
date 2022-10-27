import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(children: const [
        SizedBox(
          height: 25,
        ),
        Center(
            child: Text(
          "List of Contacts",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        )),
        ListTile(
          title: Text("Contact 1"),
          tileColor: Colors.cyan,
          subtitle: Text("8776465768"),
          leading: CircleAvatar(child: Icon(Icons.contact_phone)),
          trailing: Icon(Icons.dialer_sip_rounded),
        ),
        Divider(
          thickness: 4,
        ),
        ListTile(
          title: Text("Contact 2"),
          subtitle: Text("7656536767"),
          leading: CircleAvatar(child: Icon(Icons.contact_phone)),
          trailing: Icon(
            Icons.dialer_sip_rounded,
            color: Colors.indigo,
          ),
        ),
        ListTile(
          title: Text("Contact 3"),
          subtitle: Text("6573928367"),
          leading: CircleAvatar(child: Icon(Icons.contact_phone)),
          trailing: Icon(Icons.dialer_sip_rounded),
        ),
      ]),
    );
  }
}
