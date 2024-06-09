import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/models/movie_list.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'mdb_client.g.dart';

@RestApi(baseUrl: "https://api.themoviedb.org/3/")
abstract class MDBClient {
  factory MDBClient(Dio dio, {String baseUrl}) = _MDBClient;

  @GET(MDBEndPoint.discoverMovies)
  Future<HttpResponse<MovieList>> discoverMovies();

  @GET(MDBEndPoint.movieDetails)
  Future<HttpResponse<Movie>> getDetails(
    @Path(MDBPath.movieId) String movieId,
  );

  @GET(MDBEndPoint.searchMovies)
  Future<HttpResponse<MovieList>> searchMovies(
    @Query(MDBPath.query) String query,
  );
}

class MDBPath {
  static const String discover = 'discover';
  static const String movie = 'movie';
  static const String search = 'search';
  static const String tv = 'tv';
  static const String movieId = 'movie_id';
  static const String query = 'query';

  static const String discoverMovies = '$discover/$movie';
  static const String searchMovies = '$search/$movie';
  static const String movieDetails = '$movie/{$movieId}';

  static const String discoverTV = '$discover/$tv';
}

class MDBEndPoint {
  static const String discoverMovies = MDBPath.discoverMovies;
  static const String discoverTV = MDBPath.discoverTV;
  static const String movieDetails = MDBPath.movieDetails;
  static const String searchMovies = MDBPath.searchMovies;
}
