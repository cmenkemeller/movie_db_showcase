import 'package:equifax_movie_db/models/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list.freezed.dart';
part 'movie_list.g.dart';

@freezed
class MovieList with _$MovieList {
  factory MovieList({
    int? page,
    @Default([]) List<Movie> results,
    int? totalPages,
    int? totalResults,
  }) = _MovieList;

  factory MovieList.fromJson(Map<String, dynamic> json) =>
      _$MovieListFromJson(json);
}
