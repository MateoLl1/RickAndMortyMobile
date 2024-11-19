


import 'package:rick_and_morty_app/domain/domain.dart';

abstract class CharacterDatasource {
  
  Future<List<Character>> allCharacters({int page = 1,int offset = 1, int limit = 10});

  Future<List<Character>> searchByName(String name,{int page = 1});

  Future<Character> characterById(int id);

}