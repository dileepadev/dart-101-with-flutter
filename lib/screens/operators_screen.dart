import 'package:dart_101_with_flutter/variables/data.dart';
import 'package:flutter/material.dart';

import '../widgets/buttons.dart';

class OperatorsScreen extends StatefulWidget {
  const OperatorsScreen({super.key});

  @override
  State<OperatorsScreen> createState() => _OperatorsScreenState();
}

class _OperatorsScreenState extends State<OperatorsScreen> {
  Operators operations = Operators();

  Widget exampleRunWidget(String text, onPressed) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            ),
            secondaryButtonWidget(onPressed: onPressed, text: 'Run'),
          ],
        ),
      ),
    );
  }

  Widget arithmeticWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Arithmetic Operations',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        const Text(
          'Arithmetic operations are used to perform mathematical operations like addition, subtraction, multiplication, division, etc.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text(
          'Example:',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        Row(children: [
          Text(
            'int a = 10;',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade800),
          ),
          const SizedBox(width: 10),
          Text(
            'int b = 20;',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade800),
          ),
        ]),
        exampleRunWidget('print(a + b); // 30', () {
          operations.runAddition();
        }),
        exampleRunWidget('print(a - b); // -10', () {
          operations.runSubtraction();
        }),
        exampleRunWidget('print(a * b); // 200', () {
          operations.runMultiplication();
        }),
        exampleRunWidget('print(a / b); // 0.5', () {
          operations.runDivision();
        }),
        exampleRunWidget('print(a % b); // 10', () {
          operations.runModulo();
        }),
      ],
    );
  }

  Widget relationalWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Relational Operations',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        const Text(
          'Relational operations are used to compare two values. The result of a relational operation is either true or false.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text(
          'Example:',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        Row(children: [
          Text(
            'int a = 10;',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade800),
          ),
          const SizedBox(width: 10),
          Text(
            'int b = 20;',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade800),
          ),
        ]),
        exampleRunWidget('print(a > b); // false', () {
          operations.runGreaterThan();
        }),
        exampleRunWidget('print(a < b); // true', () {
          operations.runLessThan();
        }),
        exampleRunWidget('print(a >= b); // false', () {
          operations.runGreaterThanOrEqualTo();
        }),
        exampleRunWidget('print(a <= b); // true', () {
          operations.runLessThanOrEqualTo();
        }),
        exampleRunWidget('print(a == b); // false', () {
          operations.runEqualTo();
        }),
        exampleRunWidget('print(a != b); // true', () {
          operations.runNotEqualTo();
        }),
      ],
    );
  }

  Widget logicalWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Logical Operations',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        const Text(
          'Logical operations are used to combine multiple conditions. The result of a logical operation is either true or false.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text(
          'Example:',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        Row(children: [
          Text(
            'int a = 10;',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade800),
          ),
          const SizedBox(width: 10),
          Text(
            'int b = 20;',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade800),
          ),
        ]),
        exampleRunWidget('print(a & b); // false', () {
          operations.runAnd();
        }),
        exampleRunWidget('print(a | b); // true', () {
          operations.runOr();
        }),
        exampleRunWidget('print!(a > b); // false', () {
          operations.runNot();
        }),
      ],
    );
  }

  Widget operatorsWidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Operators',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Operators are used to perform operations on variables and values. Dart has multiple types of operators and we will be looking at some of them in this chapter.',
            style: TextStyle(fontSize: 18),
          ),
          // Arithmetic Operations
          const SizedBox(height: 10),
          const Divider(),
          arithmeticWidget(),
          // Relational Operations
          const SizedBox(height: 10),
          const Divider(),
          relationalWidget(),
          // Logical Operations
          const SizedBox(height: 10),
          const Divider(),
          logicalWidget(),
          // More Operations
          const SizedBox(height: 10),
          const Divider(),
          const Text(
            'There are more operators in Dart. You can read about them here:',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          const Text(
            'https://dart.dev/language/operators',
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 2️⃣ Operators'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            operatorsWidget(),
          ],
        ),
      ),
    );
  }
}
