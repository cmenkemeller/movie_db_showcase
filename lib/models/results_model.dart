import 'package:freezed_annotation/freezed_annotation.dart';

part 'results_model.freezed.dart';
part 'results_model.g.dart';

@freezed
class ResultList with _$ResultList {
  factory ResultList({
    int? page,
    List<Results>? results,
    int? totalPages,
    int? totalResults,
  }) = _ResultList;

  factory ResultList.fromJson(Map<String, dynamic> json) =>
      _$ResultListFromJson(json);
}

@freezed
class Results with _$Results {
  factory Results({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
