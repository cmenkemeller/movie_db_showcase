part of 'details_cubit.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState({
    required bool isLoading,
    required Movie movie,
  }) = _DetailsState;

  factory DetailsState.loading() => const DetailsState(
        movie: Movie(id: 0, title: ''),
        isLoading: true,
      );
}
