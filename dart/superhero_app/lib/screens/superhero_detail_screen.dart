import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superhero;
  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Superhero Ficha')),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              superhero.url,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Text(superhero.name),
        ],
      ),
    );
  }
}
