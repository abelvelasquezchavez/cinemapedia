import 'package:cinemapedia/presentation/views/views.dart';
import 'package:go_router/go_router.dart';

import 'package:cinemapedia/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  ShellRoute(
    builder: (context, state, child) {
      return HomeScreen(childView: child);
    },
    routes: [
      GoRoute(
          path: '/',
          // name: MovieScreen.name,
          builder: (context, state) {
            return const HomeView();
          },
          routes: [
            GoRoute(
              path: 'movie/:id',
              name: MovieScreen.name,
              builder: (context, state) {
                final movieId = state.params['id'] ?? 'no-id';
                return MovieScreen(movieId: movieId);
              },
            ),
          ]),
      GoRoute(
        path: '/favorites',
        // name: MovieScreen.name,
        builder: (context, state) {
          return const FavoritesView();
        },
      )
    ],
  ),
]);

//Rtuas Padre/Hijo
//   GoRoute(
//       path: '/',
//       name: HomeScreen.name,
//       builder: (context, state) => const HomeScreen(
//             childView: FavoritesView(),
//           ),
//       routes: [
//         GoRoute(
//           path: 'movie/:id',
//           name: MovieScreen.name,
//           builder: (context, state) {
//             final movieId = state.params['id'] ?? 'no-id';

//             return MovieScreen(movieId: movieId);
//           },
//         ),
//       ]),
// ]);
