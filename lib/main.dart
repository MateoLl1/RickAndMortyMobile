import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/config/config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme(isDarK: true, selectColor: 0).getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}