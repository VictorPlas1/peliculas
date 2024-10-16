import 'package:flutter/material.dart';
import 'package:peliculas/entities/pelicula.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:peliculas/entities/populares.dart';

class PeliculasProviders extends ChangeNotifier {
  final String _apiKey = 'ceb5475f48a70876d883b424ba24f113';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  List<Pelicula> populares = [];

  PeliculasProviders() {
    getPopulares();
  }
  Future<String> _getJsonData(String endpoint, int page) async {
    final url = Uri.https(_baseUrl, endpoint,
        {'api_key': _apiKey, 'language': _language, 'page': '$page'});

    final response = await http.get(url);
    return response.body;
  }

  getPopulares() async {
    final jsonData = await _getJsonData('3/movie/popular', 1);
    final popularesRespuesta = Populares.fromJson(jsonDecode(jsonData));
    populares = popularesRespuesta.resultados;
    notifyListeners();
  }
}
