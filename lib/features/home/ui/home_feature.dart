import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/features/home/cubit/home_cubit.dart';
import 'package:equifax_movie_db/features/home/ui/home_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeFeature extends StatelessWidget {
  const HomeFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeCubit(client: RepositoryProvider.of<MDBClient>(context))
            ..getMovies(),
      child: const HomePresenter(),
    );
  }
}
