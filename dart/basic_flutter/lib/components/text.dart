import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text(
          "This is a simple text example.",
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
        Text(
          "Otro texto.",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          "Otro texto curvado.",
          style: TextStyle(
            fontSize: 25,
            color: Colors.amber,
            decoration: TextDecoration.underline,
            letterSpacing: 5.0,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
