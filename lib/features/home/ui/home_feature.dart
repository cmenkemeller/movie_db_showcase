import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/features/details/ui/details_feature.dart';
import 'package:equifax_movie_db/features/home/cubit/home_cubit.dart';
import 'package:equifax_movie_db/features/home/ui/home_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'home_feature.g.dart';

@TypedGoRoute<HomeFeature>(path: '/', routes: [
  TypedGoRoute<DetailsFeature>(
    path: 'details/:id',
  )
])
@immutable
class HomeFeature extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) =>
          HomeCubit(client: RepositoryProvider.of<MDBClient>(context))
            ..getMovies(),
      child: const HomePresenter(),
    );
  }
}
