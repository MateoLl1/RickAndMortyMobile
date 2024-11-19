

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/domain/domain.dart';

class CharacterNotifier extends StateNotifier<List<Character>> {
  final CharacterRepository repository;
  CharacterNotifier({required this.repository}): super([]);

  int page = 1;
  Future<void> loadCharacters({int limit = 1, int offset = 1})async{
    final newCharacters = await repository
      .allCharacters(limit: limit,page: page,offset: offset);
    state = [...state,...newCharacters];

  }


}