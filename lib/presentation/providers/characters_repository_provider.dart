


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/infrastructure/datasources/rick_and_morty_datasource.dart';
import 'package:rick_and_morty_app/infrastructure/repositories/characters_repository_impl.dart';

final charactersRepositoryProvider = Provider((ref) {
  final datasource = RickAndMortyDatasource();
  return CharactersRepositoryImpl(datasource: datasource);
});