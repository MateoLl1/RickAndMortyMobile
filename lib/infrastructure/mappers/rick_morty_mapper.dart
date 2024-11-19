import 'package:rick_and_morty_app/domain/domain.dart';
import 'package:rick_and_morty_app/infrastructure/models/rick_morty_model.dart';

class RickMortyMapper {
  static Character toEntity(Result result) {
    return Character(
      id: result.id,
      name: result.name,
      status: result.status.toString(),
      species: result.species.toString(),
      type: result.type,
      gender: result.gender.toString(),
      origin: result.origin.name.toString(),
      location: result.location.toString(),
      image: result.image,
      episode: result.episode,
      url: result.url,
      created: result.created,
    );
  }
}
