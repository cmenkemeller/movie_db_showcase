import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/features/details/cubit/details_cubit.dart';
import 'package:equifax_movie_db/features/details/ui/details_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsFeature extends StatelessWidget {
  final String id;
  final DetailsCubit? detailsCubit;
  const DetailsFeature({required this.id, this.detailsCubit, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => (detailsCubit ??
          DetailsCubit(client: RepositoryProvider.of<MDBClient>(context)))
        ..loadDetails(id: id),
      child: const DetailsPresenter(),
    );
  }
}
