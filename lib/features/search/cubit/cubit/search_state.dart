part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    @Default([]) List<Movie> movieList,
  }) = _SearchState;

  factory SearchState.loading() => const SearchState(
        isLoading: true,
      );
}
