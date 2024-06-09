import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/util/category_enum.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final MDBClient? client;
  HomeCubit({this.client}) : super(HomeState.loading());

  Future<void> getMovies() async {
    emit(state.copyWith(isLoading: true));
    final result = await client?.discoverMovies(state.selectedCategory.path);
    final movies = result?.data.results;
    if (movies != null) {
      emit(HomeState(
          movieList: movies,
          isLoading: false,
          selectedCategory: state.selectedCategory));
    }
  }

  updateSortBy(CategoryEnum category) {
    emit(state.copyWith(selectedCategory: category));
    getMovies();
  }
}
