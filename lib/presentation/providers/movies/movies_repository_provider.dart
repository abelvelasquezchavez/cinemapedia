import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Este repository es el encargado de obtener los datos de la API de MovieDB
// y de transformarlos en objetos Movie
// es inmutable porque no se puede modificar el estado de la API de MovieDB
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
