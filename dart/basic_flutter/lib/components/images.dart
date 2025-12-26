import 'package:flutter/material.dart';

class ImagesExample extends StatelessWidget {
  const ImagesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [       
        Image.network(
          'https://avatars.githubusercontent.com/u/14101776?s=200&v=4',
          width: 200,
          height: 200,
        ),
        Image.asset(  
          'assets/images/logotipo.png',
          width: 200,
          height: 200,
        ),
      ],
    );
  }
}