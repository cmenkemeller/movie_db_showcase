import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  final MDBClient? client;

  SearchCubit({this.client}) : super(SearchState.loading());

  search(String? query) {
    if (query != null) {
      emit(SearchState.loading());
      client?.searchMovies(query).then((result) {
        final movies = result.data.results;
        emit(SearchState(movieList: movies, isLoading: false));
      });
    }
  }
}
