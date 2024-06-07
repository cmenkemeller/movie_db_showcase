import 'package:equifax_movie_db/models/results_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    @Default([]) List<Results> resultList,
  }) = _HomeState;

  factory HomeState.loading() => const HomeState(
        isLoading: true,
      );
}
