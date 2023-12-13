import 'package:dart_101_with_flutter/variables/data.dart';
import 'package:dart_101_with_flutter/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ControlFlowScreen extends StatefulWidget {
  const ControlFlowScreen({super.key});

  @override
  State<ControlFlowScreen> createState() => _ControlFlowScreenState();
}

class _ControlFlowScreenState extends State<ControlFlowScreen> {
  ControlFlow controlFlow = ControlFlow();

  Widget exampleRunWidget(String text, onPressed) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 18),
              ),
              secondaryButtonWidget(onPressed: onPressed, text: 'Run'),
            ],
          ),
        ),
      ),
    );
  }

  Widget branchesWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Branches',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        const Text(
          'https://dart.dev/language/branches',
          style: TextStyle(fontSize: 18, color: Colors.blue),
        ),
        const SizedBox(height: 10),
        const Text(
          'Branches are used to execute a block of code only if a certain condition is met.',
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
        const SizedBox(height: 10),
        const Text('if',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget('if (a > b) {\n  print(\'a is greater than b\');\n}',
            () {
          controlFlow.runIf();
        }),
        const SizedBox(height: 10),
        const Text('if - else',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'if (a > b) {\n  print(\'a is greater than b\');\n} else {\n  print(\'a is not greater than b\');\n}',
          () {
            controlFlow.runIfElse();
          },
        ),
        const SizedBox(height: 10),
        const Text('if - else if - else',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'if (a > b) {\n  print(\'a is greater than b\');\n} else if (a < b) {\n  print(\'a is less than b\');\n} else {\n  print(\'a is equal to b\');\n}',
          () {
            controlFlow.runIfElseIfElse();
          },
        ),
        const SizedBox(height: 10),
        const Text('switch',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'switch (a) {\n  case 10:\n    print(\'a is equal to 10\');\n    break;\n  case 20:\n    print(\'a is equal to 20\');\n    break;\n  default:\n    print(\'a is not equal to 10 or 20\');\n}',
          () {
            controlFlow.runSwitch();
          },
        ),
      ],
    );
  }

  Widget loopsWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Loops',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        const Text(
          'https://dart.dev/language/loops',
          style: TextStyle(fontSize: 18, color: Colors.blue),
        ),
        const SizedBox(height: 10),
        const Text(
          'Loops are used to execute a block of code repeatedly.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text(
          'Example:',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text('for',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget('for (int i = 0; i < 10; i++) {\n  print(i);\n}', () {
          controlFlow.runFor();
        }),
        const SizedBox(height: 10),
        const Text('while',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'int i = 0;\nwhile (i < 10) {\n  print(i);\n  i++;\n}',
          () {
            controlFlow.runWhile();
          },
        ),
        const SizedBox(height: 10),
        const Text('do - while',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'int i = 0;\ndo {\n  print(i);\n  i++;\n} while (i < 10);',
          () {
            controlFlow.runDoWhile();
          },
        ),
        const SizedBox(height: 10),
        const Text('break',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'for (int i = 0; i < 10; i++) {\n  if (i == 3) {\n    break;\n  }\n  print(i);\n}',
          () {
            controlFlow.runBreak();
          },
        ),
        const SizedBox(height: 10),
        const Text('continue',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'for (int i = 0; i < 10; i++) {\n  if (i == 3) {\n    continue;\n  }\n  print(i);\n}',
          () {
            controlFlow.runContinue();
          },
        ),
      ],
    );
  }

  Widget controlFlowWidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Control Flow',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Control flow statements are used to control the flow of execution of a program. They are used to execute a block of code only if a certain condition is met.',
            style: TextStyle(fontSize: 18),
          ),
          // Branches
          const SizedBox(height: 10),
          const Divider(),
          branchesWidget(),
          // Loops
          const SizedBox(height: 10),
          const Divider(),
          loopsWidget(),
          // More Operations
          const SizedBox(height: 10),
          const Divider(),
          const Text(
            'You can read more about control flow statements here:',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          const Text(
            'https://dart.dev/language/branches',
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
          const Text(
            'https://dart.dev/language/loops',
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
        title: const Text('Chapter 3️⃣ Control Flow'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            controlFlowWidget(),
          ],
        ),
      ),
    );
  }
}
