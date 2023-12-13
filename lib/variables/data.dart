import 'dart:developer';

class Variables {
  String name = 'John Doe';
  int age = 27;
  double salary = 6500.55;
  bool isMarried = false;
  List languages = ["En", "Si"];
  Map profile = {'name': 'John Doe', 'age': 27};
}

class Operators {
  int a = 10;
  int b = 20;

  /* ℹ️ Important to know:
  * If we add two integers, the result will be an integer.
  * If we add two doubles, the result will be a double.
  * If we add an integer and a double, the result will be a double.
  * If we add a double and an integer, the result will be a double.
  * If we add a string and an integer or a double, or a boolean, the result will be a string.
  * If we add a string and a string, the result will be a string.
  * */

  // --------------------- Arithmetic Operations --------------------- \\
  void runAddition() {
    // OUTPUT: 30
    log('a + b = ${a + b}');
    // print(a + b);
  }

  void runSubtraction() {
    // OUTPUT: -10
    log('a - b = ${a - b}');
    // print(a - b);
  }

  void runMultiplication() {
    // OUTPUT: 200
    log('a * b = ${a * b}');
    // print(a * b);
  }

  void runDivision() {
    // OUTPUT: 0.5
    log('a / b = ${a / b}');
    // print(a / b);
  }

  void runModulo() {
    // OUTPUT: 10
    log('a % b = ${a % b}');
    // print(a % b);
  }

  // --------------------- Relational Operations --------------------- \\

  void runGreaterThan() {
    // OUTPUT: false
    log('a > b = ${a > b}');
    // print(a > b);
  }

  void runLessThan() {
    // OUTPUT: true
    log('a < b = ${a < b}');
    // print(a < b);
  }

  void runGreaterThanOrEqualTo() {
    // OUTPUT: false
    log('a >= b = ${a >= b}');
    // print(a >= b);
  }

  void runLessThanOrEqualTo() {
    // OUTPUT: true
    log('a <= b = ${a <= b}');
    // print(a <= b);
  }

  void runEqualTo() {
    // OUTPUT: false
    log('a == b = ${a == b}');
    // print(a == b);
  }

  void runNotEqualTo() {
    // OUTPUT: true
    log('a != b = ${a != b}');
    // print(a != b);
  }

  // --------------------- Logical Operations --------------------- \\

  void runAnd() {
    // OUTPUT: false
    log('a > b && a < b = ${a > b && a < b}');
    // print(a > b && a < b);
  }

  void runOr() {
    // OUTPUT: true
    log('a > b || a < b = ${a > b || a < b}');
    // print(a > b || a < b);
  }

  void runNot() {
    // OUTPUT: false
    log('!(a > b) = ${!(a > b)}');
    // print(!(a > b));
  }
}

class ControlFlow {
  int a = 10;
  int b = 20;

  // --------------------- Branches --------------------- \\

  void runIf() {
    if (a > b) {
      // OUTPUT: a is greater than b
      log('a is greater than b');
      // print('a is greater than b');
    }
  }

  void runIfElse() {
    if (a > b) {
      // OUTPUT: a is greater than b
      log('a is greater than b');
      // print('a is greater than b');
    } else {
      // OUTPUT: a is not greater than b
      log('a is not greater than b');
      // print('a is not greater than b');
    }
  }

  void runIfElseIfElse() {
    if (a > b) {
      // OUTPUT: a is greater than b
      log('a is greater than b');
      // print('a is greater than b');
    } else if (a < b) {
      // OUTPUT: a is less than b
      log('a is less than b');
      // print('a is less than b');
    } else {
      // OUTPUT: a is equal to b
      log('a is equal to b');
      // print('a is equal to b');
    }
  }

  void runSwitch() {
    switch (a) {
      case 10:
        // OUTPUT: a is equal to 10
        log('a is equal to 10');
        // print('a is equal to 10');
        break;
      case 20:
        // OUTPUT: a is equal to 20
        log('a is equal to 20');
        // print('a is equal to 20');
        break;
      default:
        // OUTPUT: a is not equal to 10 or 20
        log('a is not equal to 10 or 20');
      // print('a is not equal to 10 or 20');
    }
  }

  // --------------------- Loops --------------------- \\

  void runFor() {
    for (int i = 0; i < 0; i++) {
      // OUTPUT: 0 1 2 3 4 5 6 7 8 9
      log('$i');
      // print(i);
    }
  }

  void runWhile() {
    int i = 0;
    while (i < 10) {
      // OUTPUT: 0 1 2 3 4 5 6 7 8 9
      log('$i');
      // print(i);
      i++;
    }
  }

  void runDoWhile() {
    int i = 0;
    do {
      // OUTPUT: 0 1 2 3 4 5 6 7 8 9
      log('$i');
      // print(i);
      i++;
    } while (i < 10);
  }

  void runBreak() {
    for (int i = 0; i < 10; i++) {
      if (i == 3) {
        break;
      }
      // OUTPUT: 0 1 2 3
      log('$i');
      // print(i);
    }
  }

  void runContinue() {
    for (int i = 0; i < 10; i++) {
      if (i == 3) {
        continue;
      }
      // OUTPUT: 0 1 2 4 5 6 7 8 9
      log('$i');
      // print(i);
    }
  }
}

class Functions {
  // --------------------- Functions with and without void --------------------- \\

  /* ℹ️ Important to know:
  * _runAddition() is a private function.
  * Private functions can only be accessed within the same file.
  *
  * runAddition() is a public function.
  * Public functions can be accessed from any file.
  *
  * If we do not specify a return type, the default return type is dynamic.
  * If we do not specify a return value, the default return value is null.
  *
  * The difference between a function with void and a function without void is that,
  * a function with void does not return any value.
  * A function without void returns a value.
  *
  * */

  runFunctionWithoutVoid() {
    // OUTPUT: Hello World!
    log('Hello World! With void keyword');
    // print('Hello World!');
  }

  void runFunctionVoid() {
    // OUTPUT: Hello World!
    log('Hello World! Without void keyword');
    // print('Hello World!');
  }

  // --------------------- Functions with Return Values --------------------- \\

  String runFunctionWithReturnValueString() {
    // OUTPUT: Hello World!
    log('Hello World!');
    // print('Hello World!');
    return 'Hello World!';

    // USAGE:
    // String message = runFunctionWithReturnValueString();
    // log(message);
    // print(message);
  }

  int runFunctionWithReturnValueInt() {
    // OUTPUT: 10
    log('10');
    // print('10');
    return 10;

    // USAGE:
    // int number = runFunctionWithReturnValueInt();
    // log(number);
    // print(number);
  }

  double runFunctionWithReturnValueDouble() {
    // OUTPUT: 10.5
    log('10.5');
    // print('10.5');
    return 10.5;

    // USAGE:
    // double number = runFunctionWithReturnValueDouble();
    // log(number);
    // print(number);
  }

  bool runFunctionWithReturnValueBool() {
    // OUTPUT: true
    log('true');
    // print('true');
    return true;

    // USAGE:
    // bool value = runFunctionWithReturnValueBool();
    // log(value);
    // print(value);
  }

  // --------------------- Functions with Parameters --------------------- \\

  void runFunctionWithParameters(String name, int age) {
    // OUTPUT: Name: John Doe Age: 27
    log('Name: $name Age: $age');
    // print('Name: $name Age: $age');

    // USAGE:
    // runFunctionWithParameters('John Doe', 27);
  }

  // --------------------- Functions with Optional Parameters --------------------- \\

  void runFunctionWithOptionalParameters(String name, [int? age]) {
    if (age != null) {
      // OUTPUT: Name: John Doe Age: 27
      log('Name: $name Age: $age');
      // print('Name: $name Age: $age');
    } else {
      // OUTPUT: Name: John Doe
      log('Name: $name');
      // print('Name: $name');
    }

    // USAGE:
    // runFunctionWithOptionalParameters('John Doe');
    // runFunctionWithOptionalParameters('John Doe', 27);
  }

  // --------------------- Functions with Named Parameters --------------------- \\

  void runFunctionWithNamedParameters(String name, {required int age}) {
    if (age != null) {
      // OUTPUT: Name: John Doe Age: 27
      log('Name: $name Age: $age');
      // print('Name: $name Age: $age');
    } else {
      // OUTPUT: Name: John Doe
      log('Name: $name');
      // print('Name: $name');
    }

    // USAGE:
    // runFunctionWithNamedParameters('John Doe', age: 27);
  }

  // --------------------- Arrow Functions --------------------- \\
  void runArrowFunction() => log('Hello World! This is an arrow function');
  // void runArrowFunction() => print('Hello World! This is an arrow function');
}
