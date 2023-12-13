import 'package:dart_101_with_flutter/variables/data.dart';
import 'package:flutter/material.dart';

class VariablesScreen extends StatefulWidget {
  const VariablesScreen({super.key});

  @override
  State<VariablesScreen> createState() => _VariablesScreenState();
}

class _VariablesScreenState extends State<VariablesScreen> {
  Variables variables = Variables();

  Text cellHeaderWidget(String text) {
    return Text(text, style: const TextStyle(fontSize: 21));
  }

  Text cellDataWidget(String text) {
    return Text(text, style: const TextStyle(fontSize: 18));
  }

  Widget examplesWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Variables and Data Types',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                Text(
                  'Variables are used to store data. Data types are used to specify the type of data that a variable can store.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  'Example:',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
              ],
            )),
        DataTable(columns: [
          DataColumn(label: cellHeaderWidget("Type")),
          DataColumn(label: cellHeaderWidget('Name')),
          DataColumn(label: cellHeaderWidget("Value")),
        ], rows: [
          DataRow(cells: [
            DataCell(cellDataWidget('String')),
            DataCell(cellDataWidget('name')),
            DataCell(cellDataWidget(variables.name)),
          ]),
          DataRow(cells: [
            DataCell(cellDataWidget('int')),
            DataCell(cellDataWidget('age')),
            DataCell(cellDataWidget(variables.age.toString())),
          ]),
          DataRow(cells: [
            DataCell(cellDataWidget('double')),
            DataCell(cellDataWidget('salary')),
            DataCell(cellDataWidget(variables.salary.toString())),
          ]),
          DataRow(cells: [
            DataCell(cellDataWidget('bool')),
            DataCell(cellDataWidget('isMarried')),
            DataCell(cellDataWidget(variables.isMarried.toString())),
          ]),
          DataRow(cells: [
            DataCell(cellDataWidget('List')),
            DataCell(cellDataWidget('languages')),
            DataCell(cellDataWidget(variables.languages.toString())),
          ]),
          DataRow(cells: [
            DataCell(cellDataWidget('Map')),
            DataCell(cellDataWidget('profile')),
            DataCell(cellDataWidget(variables.profile.toString())),
          ]),
        ]),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 1️⃣ Variables'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            examplesWidget(),
          ],
        ),
      ),
    );
  }
}
