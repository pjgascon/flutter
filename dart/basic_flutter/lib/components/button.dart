import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        ElevatedButton(
          onPressed: () {
            print('Pulsacion corta');
          },
          onLongPress: () {
            print('Pulsado');
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.amber),
          ),
          child: const Text('Elevated Button'),
        ),
        FloatingActionButton(
          onPressed: () {
            print('Floating Action Button pressed');
          },
          child: Icon(Icons.add),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        const SizedBox(height: 20),
        const Spacer(),
      ],
    );
  }
}
