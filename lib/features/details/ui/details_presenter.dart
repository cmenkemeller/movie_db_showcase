import 'package:equifax_movie_db/features/details/cubit/details_cubit.dart';
import 'package:equifax_movie_db/features/details/ui/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsPresenter extends StatelessWidget {
  const DetailsPresenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (context, state) {
          if (state.isLoading || state.movie == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return DetailsScreen(
            movie: state.movie!,
          );
        },
      ),
    );
  }
}
