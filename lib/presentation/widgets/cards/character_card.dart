

import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/domain/domain.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          Image.network(character.image)

        ],
      ),
    );
  }
}