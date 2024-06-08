import 'package:equifax_movie_db/models/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    @Default([]) List<Movie> movieList,
  }) = _HomeState;

  factory HomeState.loading() => const HomeState(
        isLoading: true,
      );
}
