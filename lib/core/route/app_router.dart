
import '../core.dart';

class AppRouter {
  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: Routes.HOME_SCREEN,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeRouteProvider();
        },
      ),
    ],
  );
  GoRouter get router => _router;
}
