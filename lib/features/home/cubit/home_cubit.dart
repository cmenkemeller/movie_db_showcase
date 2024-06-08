import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/features/home/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final MDBClient? client;
  HomeCubit({this.client}) : super(HomeState.loading());

  Future<void> getMovies() async {
    emit(HomeState.loading());
    final result = await client?.discoverMovies();
    final movies = result?.data.results;
    if (movies != null) {
      emit(HomeState(movieList: movies, isLoading: false));
    }
  }
}
