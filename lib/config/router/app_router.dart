
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_app/presentation/screens/screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    )
  ]
);