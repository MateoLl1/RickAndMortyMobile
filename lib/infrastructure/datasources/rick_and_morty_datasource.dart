

import 'package:rick_and_morty_app/domain/domain.dart';

class RickAndMortyDatasource implements CharacterDatasource {

  @override
  Future<List<Character>> allCharacters({int page = 1, int offset = 1, int limit = 10}) async{
    return [];
  }

  @override
  Future<Character> characterById(int id) {
    // TODO: implement characterById
    throw UnimplementedError();
  }

  @override
  Future<List<Character>> searchByName(String name,{int page = 1}) async{
    return [];
  }
  
}