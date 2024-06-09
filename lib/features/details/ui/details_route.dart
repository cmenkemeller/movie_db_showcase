import 'package:equifax_movie_db/features/details/ui/details_feature.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

@immutable
class DetailsRoute extends GoRouteData {
  final String id;
  const DetailsRoute({
    required this.id,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailsFeature(id: id);
  }
}
