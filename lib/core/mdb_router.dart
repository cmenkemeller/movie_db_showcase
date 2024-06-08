import 'package:equifax_movie_db/features/home/ui/home_feature.dart';
import 'package:go_router/go_router.dart';

class MDBRouter {
  static GoRouter router = GoRouter(
    initialLocation: HomeFeature().location,
    routes: $appRoutes,
  );
}
