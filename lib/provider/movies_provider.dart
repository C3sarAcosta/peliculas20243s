import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas20243s/models/now_playing_response.dart';

import '../models/movie.dart';

class MoviesProvider extends ChangeNotifier {
  String _baseUrl = 'api/themoviedb.org';
  String _apiKey = '9dc27117b000e7e5acfb365fa957971a';
  String _language = 'es-MX';

  List<Movie> onDisplayMovies = [];

  MoviesProvider() {
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'laguage': _language, 'page': '1'});

    final response = await http.get(url);
    final Map<String, dynamic> decodeData = json.decode(response.body);
    //print(decodeData);
    //print(response.body);
    final onNowPlayingResponse = NowPlayingResponse.fromRawJson(response.body);
    notifyListeners();
    print(onNowPlayingResponse.results[0].title);
  }
}
