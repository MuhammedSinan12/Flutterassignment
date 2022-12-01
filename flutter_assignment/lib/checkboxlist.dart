import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckBoxAssign extends StatefulWidget {
  const CheckBoxAssign({super.key});

  @override
  State<CheckBoxAssign> createState() => _CheckBoxAssignState();
}

class _CheckBoxAssignState extends State<CheckBoxAssign> {
  bool ischecked = false;

  List datas = [
    [
      'data:image/png;base64,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',
      'Android',
      false
    ],
    [
      'data:image/png;base64,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',
      'Flutter',
      false
    ],
    [
      'data:image/png;base64,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',
      'Apple',
      false
    ],
    [
      'data:image/png;base64,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',
      'Php',
      false
    ],
    [
      'data:image/png;base64,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',
      'Node',
      false
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckBox Assignment"),
        backgroundColor: Colors.black,
      ),
      drawer: const Drawer(),
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Card(
              child: CheckboxListTile(
                value: datas[index][2],
                onChanged: (value) {
                  setState(() {
                    datas[index][2] = value!;
                  });
                },
                activeColor: Colors.blueGrey,
                secondary: SizedBox(
                  width: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      datas[index][0],
                      fit: BoxFit.contain,
                      height: 50,
                    ),
                  ),
                ),
                title: Text(datas[index][1]),
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CheckBoxAssign(),
  ));
}
