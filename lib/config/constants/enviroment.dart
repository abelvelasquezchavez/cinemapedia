import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static String theMovieDbKey = dotenv.env['THE_TMDB_KEY'] ?? 'No Key';
}
