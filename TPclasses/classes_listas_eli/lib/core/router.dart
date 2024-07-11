import 'package:classes_listas_eli/screens/home_screen.dart';
import 'package:classes_listas_eli/screens/login_screen.dart';
import 'package:classes_listas_eli/screens/details_screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    name: LoginScreen.name,
    path: '/',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    name: HomeScreen.name,
    path: '/home',
    builder: (context, state) => HomeScreen(),
  ),
  GoRoute(
    name: DetailScreen.name,
    path: '/detalles',
    builder: (context, state) => DetailScreen(cafe: state.extra as dynamic),
  ),
]);