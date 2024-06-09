import 'package:equifax_movie_db/features/details/ui/details_route.dart';
import 'package:equifax_movie_db/features/home/ui/home_feature.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

part 'home_route.g.dart';

@TypedGoRoute<HomeRoute>(path: '/', routes: [
  TypedGoRoute<DetailsRoute>(
    path: 'details/:id',
  )
])
@immutable
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeFeature();
  }
}
