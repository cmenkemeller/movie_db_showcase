part of 'details_cubit.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState({
    required bool isLoading,
    Results? result,
  }) = _DetailsState;

  factory DetailsState.loading() => const DetailsState(
        isLoading: true,
      );
}
