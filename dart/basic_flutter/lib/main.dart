import 'package:basic_flutter/components/button.dart';
import 'package:basic_flutter/components/images.dart';
import 'package:basic_flutter/components/text.dart';
import 'package:basic_flutter/components/textFiled.dart';
import 'package:basic_flutter/layouts/row.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Flutter Components'),
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: (){},icon: Icon(Icons.abc)
            ),
            IconButton(
              icon: const Icon(Icons.image),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ImagesExample()),
                );
              },
            )
          ],
        ),
        body: const ImagesExample(),
      ),
    );
  }
}
