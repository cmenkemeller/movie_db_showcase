part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    @Default([]) List<Movie> movieList,
    @Default(CategoryEnum.topRated) CategoryEnum selectedCategory,
  }) = _HomeState;

  factory HomeState.loading() => const HomeState(
        isLoading: true,
      );
}
