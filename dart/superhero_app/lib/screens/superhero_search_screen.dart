import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';
import 'package:superhero_app/data/model/superhero_response.dart';
import 'package:superhero_app/data/repository.dart';
import 'package:superhero_app/screens/superhero_detail_screen.dart';

class SuperheroSearchScreen extends StatefulWidget {
  const SuperheroSearchScreen({super.key});

  @override
  State<SuperheroSearchScreen> createState() => _SuperheroSearchScreenState();
}

class _SuperheroSearchScreenState extends State<SuperheroSearchScreen> {
  Future<SuperheroResponse?>? _superHeroInfo;
  Repository repository = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Superhero Search')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Busca al a superhero',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _superHeroInfo = repository.fetchSuperheroData(value);
                });
              },
            ),
          ),
          FutureBuilder(
            future: _superHeroInfo,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasData) {
                final superhero = snapshot.data!.result;
                return Expanded(
                  child: ListView.builder(
                    itemCount: superhero.length,
                    itemBuilder: (context, index) {
                      return itemSuperhero(superhero[index]);
                    },
                  ),
                );
              } else {
                return const Text('Sin resutados');
              }
            },
          ),
        ],
      ),
    );
  }

  Padding itemSuperhero(SuperheroDetailResponse item) => Padding(
    padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuperheroDetailScreen(superhero: item),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                item.url,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Text(item.name),
          ],
        ),
      ),
    ),
  );
}
