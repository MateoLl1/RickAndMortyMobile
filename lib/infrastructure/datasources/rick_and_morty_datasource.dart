

import 'package:dio/dio.dart';
import 'package:rick_and_morty_app/domain/domain.dart';
import 'package:rick_and_morty_app/infrastructure/mappers/rick_morty_mapper.dart';
import 'package:rick_and_morty_app/infrastructure/models/rick_morty_model.dart';


class RickAndMortyDatasource implements CharacterDatasource {

  final _dio = Dio(
    BaseOptions(
      baseUrl: 'https://rickandmortyapi.com/api'
    )
  );

  @override
  Future<List<Character>> allCharacters({int page = 1, int offset = 1, int limit = 10}) async{
    final response = await _dio.get('/character/?page=$page');
    final newData = RickAndMortyModel.fromJson(response.data);
    final List<Character> characters = newData.characters.map((e) => RickMortyMapper.toEntity(e),).toList();
    return characters;
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