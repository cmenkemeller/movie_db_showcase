import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/features/details/cubit/details_cubit.dart';
import 'package:equifax_movie_db/features/details/ui/details_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

@immutable
class DetailsFeature extends GoRouteData {
  final String id;
  const DetailsFeature({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) =>
          DetailsCubit(client: RepositoryProvider.of<MDBClient>(context))
            ..loadDetails(id: id),
      child: const DetailsPresenter(),
    );
  }
}
