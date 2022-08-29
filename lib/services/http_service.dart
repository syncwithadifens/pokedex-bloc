import 'dart:convert';
import 'package:pokedex/models/poke_model.dart';
import 'package:http/http.dart' as http;

class HttpService {
  Future<List<PokeModel>> getPokeList() async {
    var result =
        await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/'));
    if (result.statusCode == 200) {
      List pokedata = jsonDecode(result.body)['results'];
      return pokedata.map((e) => PokeModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load');
    }
  }
}
