import 'package:equifax_movie_db/features/home/cubit/home_cubit.dart';
import 'package:equifax_movie_db/features/home/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePresenter extends StatelessWidget {
  const HomePresenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: state.resultList.length,
          itemBuilder: (context, index) {
            final movie = state.resultList[index];
            return ListTile(
              title: Text(movie.title),
              subtitle: movie.overview != null ? Text(movie.overview!) : null,
            );
          },
        );
      }),
    );
  }
}
