import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Container(
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Hello peter!"),
            Spacer(),
            Text("Hello coral!"),
            Text("Hello ari!"),
            Text("Hello guille!"),
          ],
        ),
      ),
    );
  }
}
