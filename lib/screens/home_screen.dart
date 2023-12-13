import 'package:dart_101_with_flutter/screens/control_flow_screen.dart';
import 'package:dart_101_with_flutter/screens/functions_screen.dart';
import 'package:dart_101_with_flutter/screens/operators_screen.dart';
import 'package:dart_101_with_flutter/screens/variables_screen.dart';
import 'package:dart_101_with_flutter/widgets/buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Dart 101 with Flutter',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo_dart.png', width: 50),
                const SizedBox(width: 40),
                Image.asset('assets/logo_flutter.png', width: 50),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '👋',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 10),
                Text(
                  'Welcome to Dart 101 with Flutter',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 30),
            primaryButtonWidget(
              text: 'Chapter 1️⃣ Variables',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VariablesScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            primaryButtonWidget(
              text: 'Chapter 2️⃣ Operators',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OperatorsScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            primaryButtonWidget(
              text: 'Chapter 3️⃣ Control Flow',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ControlFlowScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            primaryButtonWidget(
              text: 'Chapter 4️⃣ Functions',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FunctionsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
