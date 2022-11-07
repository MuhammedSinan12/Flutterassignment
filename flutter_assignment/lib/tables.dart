import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TableSample(),
  ));
}

class TableSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tables")),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Age',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Proffession',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Salary',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: const [
          DataRow(cells: <DataCell>[
            DataCell(Text("Raj")),
            DataCell(Text("19")),
            DataCell(Text("Student")),
            DataCell(Text("Nil")),
          ]),
          DataRow(cells: <DataCell>[
            DataCell(Text("Sarah")),
            DataCell(Text("22")),
            DataCell(Text("Internship")),
            DataCell(Text("5000")),
          ]),
          DataRow(cells: <DataCell>[
            DataCell(Text("Sree")),
            DataCell(Text("35")),
            DataCell(Text("Proffessor")),
            DataCell(Text("25000")),
          ]),
        ],
      ),
    );
  }
}
