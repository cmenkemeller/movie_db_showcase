part of 'details_cubit.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState({
    required bool isLoading,
    Movie? movie,
  }) = _DetailsState;

  factory DetailsState.loading() => const DetailsState(
        isLoading: true,
      );
}
