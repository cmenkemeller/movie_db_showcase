part of 'home_cubit.dart';

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
