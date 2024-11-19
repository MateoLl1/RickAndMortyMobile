

import 'package:rick_and_morty_app/domain/domain.dart';

class CharactersRepositoryImpl implements CharacterRepository {

  final CharacterDatasource datasource;

  CharactersRepositoryImpl({required this.datasource});

  @override
  Future<List<Character>> allCharacters({int page = 1, int offset = 1, int limit = 10}) {
    return datasource.allCharacters(limit: limit,offset: offset,page: page);
  }

  @override
  Future<Character> characterById(int id) {
    return datasource.characterById(id);
  }

  @override
  Future<List<Character>> searchByName(String name,{int page = 1}) {
    return datasource.searchByName(name,page: page);
  }
  
}