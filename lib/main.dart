import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/config/config.dart';
import 'package:rick_and_morty_app/presentation/providers/providers.dart';

void main(){
  runApp(const ProviderScope(child: MyApp()));
}


class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final isDark = ref.watch(darkThemeProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme(isDarK: isDark, selectColor: 0).getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}