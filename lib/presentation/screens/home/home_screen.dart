
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/presentation/providers/providers.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final darkProvider = ref.watch(darkThemeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
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
    );
  }
}