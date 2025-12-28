import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:superhero_app/data/model/superhero_response.dart';

class Repository {
  Future<SuperheroResponse?> fetchSuperheroData(String query) async {
    final response = await http.get(
      Uri.parse('https://superheroapi.com/api/4db6418da0b22f9880956b1a9fb199de/search/$query'),
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return SuperheroResponse.fromJson(jsonResponse);
    } else {
      return null;
    }
  }
}
