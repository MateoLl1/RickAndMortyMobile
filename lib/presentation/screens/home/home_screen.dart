
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/domain/domain.dart';
import 'package:rick_and_morty_app/presentation/providers/characters_provider.dart';
import 'package:rick_and_morty_app/presentation/providers/providers.dart';
import 'package:rick_and_morty_app/presentation/widgets/cards/character_card.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {

  @override
  void initState() {
    super.initState();
    ref.read(allCharactersProvider.notifier).loadCharacters();
  }


  @override
  Widget build(BuildContext context) {
    final darkProvider = ref.watch(darkThemeProvider);
    final characters = ref.watch(allCharactersProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.search),
      ),

      appBar: AppBar(
        title: const Text('Rick & Morty App'),
        actions: [
          IconButton(
            onPressed: (){
              ref.read(darkThemeProvider.notifier).update((state) => !state);
            }, 
            icon: darkProvider 
              ? const Icon(Icons.dark_mode) 
              : const Icon(Icons.light_mode)
          )
        ],
      ),

      body: characters.isNotEmpty 
        ? HomeView(characters: characters)
        : const Center(child: CircularProgressIndicator(),),

    );
  }
}


class HomeView extends StatelessWidget {
  final List<Character> characters;

  const HomeView({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) {
          final character = characters[index];
          return CharacterCard(character: character,);  
        },
      ),
    );
  }
}
