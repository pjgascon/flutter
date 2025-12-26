import 'package:flutter/material.dart';

class TextFiledExample extends StatelessWidget {
  const TextFiledExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 50),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your name',
              hintText: 'Introduce tu nombre',
              prefixIcon: Icon(Icons.person), 
            ),
            obscureText: true, // Oculta el texto ingresado como un password
           // maxLines: 4, // Permite múltiples líneas de entrada textarea
          ),
        ),
        Spacer(),
      ],
    );
  }
}
