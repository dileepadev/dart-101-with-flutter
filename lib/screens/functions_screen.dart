import 'package:dart_101_with_flutter/variables/data.dart';
import 'package:dart_101_with_flutter/widgets/buttons.dart';
import 'package:flutter/material.dart';

class FunctionsScreen extends StatefulWidget {
  const FunctionsScreen({super.key});

  @override
  State<FunctionsScreen> createState() => _FunctionsScreenState();
}

class _FunctionsScreenState extends State<FunctionsScreen> {
  Functions functions = Functions();

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

  Widget functionVoidWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Void Function',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        const Text(
          'We can use the keyword \'void\' to define a function that does not return any value. We can also define a function without the \'void\' keyword.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text(
          'Example (xyz = function name):',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text('With void keyword',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'void xyz() {\n'
          '  // OUTPUT: Hello World!\n'
          '  log(\'Hello World!\');\n'
          '  // print(\'Hello World!\');\n'
          '}',
          () {
            functions.runFunctionVoid();
          },
        ),
        const SizedBox(height: 10),
        const Text('Without void keyword',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'xyz() {\n'
          '  // OUTPUT: Hello World!\n'
          '  log(\'Hello World!\');\n'
          '  // print(\'Hello World!\');\n'
          '}',
          () {
            functions.runFunctionWithoutVoid();
          },
        ),
      ],
    );
  }

  Widget functionWithReturnValuesWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Functions with Return Values',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        const Text(
          'We can define a function that returns a value. It could be a String, int, double, bool or any other data type.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text(
          'Example (xyz = function name):',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text('With return value',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'String xyz() {\n'
          '  print(\'Hello World!\');\n'
          '  return \'Hello World!\';\n'
          '}'
          '\n'
          '// OUTPUT: Hello World!\n',
          () {
            functions.runFunctionWithReturnValueString();
          },
        ),
        exampleRunWidget(
          'int xyz() {\n'
          '  print(\'10\');\n'
          '  return 10;\n'
          '}'
          '\n'
          '// OUTPUT: 10\n',
          () {
            functions.runFunctionWithReturnValueInt();
          },
        ),
        exampleRunWidget(
          'double xyz() {\n'
          '  print(\'10.5\');\n'
          '  return 10.5;\n'
          '}'
          '\n'
          '// OUTPUT: 10.5\n',
          () {
            functions.runFunctionWithReturnValueDouble();
          },
        ),
        exampleRunWidget(
          'bool xyz() {\n'
          '  print(\'true\');\n'
          '  return true;\n'
          '}'
          '\n'
          '// OUTPUT: true\n',
          () {
            functions.runFunctionWithReturnValueBool();
          },
        ),
      ],
    );
  }

  Widget functionWithParametersWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Functions with Parameters',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        const Text(
          'We can define a function that accepts parameters. It is used to pass values to the function. So, we can use the values inside the function.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text(
          'Example (xyz = function name):',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text('With parameters',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'void xyz(String name, int age) {\n'
          '  print(\'Name: \$name, Age: \$age\');\n'
          '}'
          '\n'
          '// OUTPUT: Name: John Doe, Age: 27\n',
          () {
            functions.runFunctionWithParameters('John Doe', 27);
          },
        ),
      ],
    );
  }

  Widget functionWithOptionalParametersWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Functions with Optional Parameters',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        const Text(
          'We can define a function that accepts optional parameters. It means optional parameters are not required to be passed to the function.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text(
          'Example (xyz = function name):',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text('Including optional parameters',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'void xyz(String name, [int? age]) {\n'
          '  if (age != null) {\n'
          '    print(\'Name: \$name, Age: \$age\');\n'
          '  } else {\n'
          '    print(\'Name: \$name\');\n'
          '  }\n'
          '}'
          '\n'
          '// OUTPUT: Name: John Doe, Age: 27\n',
          () {
            functions.runFunctionWithOptionalParameters('John Doe', 27);
          },
        ),
        const SizedBox(height: 10),
        const Text('Excluding optional parameters',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'void xyz(String name, [int? age]) {\n'
          '  if (age != null) {\n'
          '    print(\'Name: \$name, Age: \$age\');\n'
          '  } else {\n'
          '    print(\'Name: \$name\');\n'
          '  }\n'
          '}'
          '\n'
          '// OUTPUT: Name: John Doe\n',
          () {
            functions.runFunctionWithOptionalParameters('John Doe');
          },
        ),
      ],
    );
  }

  Widget functionWithNamedParametersWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Functions with Named Parameters',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        const Text(
          'We use named parameters to make the code more readable. It is used to pass values to the function.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text(
          'Example (xyz = function name):',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text('Including named parameters',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'void xyz(String name, {required int age}) {\n'
          '  print(\'Name: \$name, Age: \$age\');\n'
          '}'
          '\n'
          '// OUTPUT: Name: John Doe, Age: 27\n',
          () {
            functions.runFunctionWithNamedParameters('John Doe', age: 27);
          },
        ),
      ],
    );
  }

  Widget functionArrowWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Arrow Functions',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        const Text(
          'Arrow functions are used to define a function in a single line. It is also known as fat arrow functions.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text(
          'Example (xyz = function name):',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        const Text('With arrow function',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        exampleRunWidget(
          'void xyz() => print(\'Hello World!\');'
          '\n'
          '// OUTPUT: Hello World!\n',
          () {
            functions.runArrowFunction();
          },
        ),
      ],
    );
  }

  Widget functionsWidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Functions',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Functions are used to group a set of statements together to perform a specific task.',
            style: TextStyle(fontSize: 18),
          ),
          // Void Function
          const SizedBox(height: 10),
          const Divider(),
          functionVoidWidget(),
          // Functions with Return Values
          const SizedBox(height: 10),
          const Divider(),
          functionWithReturnValuesWidget(),
          // Functions with Parameters
          const SizedBox(height: 10),
          const Divider(),
          functionWithParametersWidget(),
          // Functions with Optional Parameters
          const SizedBox(height: 10),
          const Divider(),
          functionWithOptionalParametersWidget(),
          // Functions with Named Parameters
          const SizedBox(height: 10),
          const Divider(),
          functionWithNamedParametersWidget(),
          // Arrow Functions
          const SizedBox(height: 10),
          const Divider(),
          functionArrowWidget(),
          // More Operations
          const SizedBox(height: 10),
          const Divider(),
          const Text(
            'You can read more about functions here:',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          const Text(
            'https://dart.dev/language/functions',
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chapter 4️⃣ Functions')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            functionsWidget(),
          ],
        ),
      ),
    );
  }
}
