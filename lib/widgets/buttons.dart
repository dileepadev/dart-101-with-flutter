import 'package:flutter/material.dart';

Widget primaryButtonWidget(
    {required String text, required VoidCallback onPressed}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      foregroundColor: const Color(0xFFFFFFFF),
      backgroundColor: const Color(0xFF181818),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    onPressed: onPressed,
    child: Text(text, style: const TextStyle(fontSize: 20)),
  );
}

Widget secondaryButtonWidget(
    {required String text, required VoidCallback onPressed}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      foregroundColor: const Color(0xFF181818),
      backgroundColor: const Color(0xFFE0E0E0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
    onPressed: onPressed,
    child: Text(text, style: const TextStyle(fontSize: 14)),
  );
}
