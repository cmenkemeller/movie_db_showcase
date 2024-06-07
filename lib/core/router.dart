import 'package:equifax_movie_db/features/details/ui/details_screen.dart';
import 'package:equifax_movie_db/features/home/ui/home_screen.dart';
import 'package:equifax_movie_db/features/search/ui/search_results_screen.dart';
import 'package:go_router/go_router.dart';

class MDBRouter {
  static GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/details/:id',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          return DetailsScreen(itemId: id);
        },
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) {
          final query = state.uri.queryParameters['query']!;
          return SearchResultsScreen(query: query);
        },
      ),
    ],
  );
}
