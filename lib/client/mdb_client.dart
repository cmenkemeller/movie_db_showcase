import 'package:equifax_movie_db/models/results_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'mdb_client.g.dart';

@RestApi(baseUrl: "https://api.themoviedb.org/3/")
abstract class MDBClient {
  factory MDBClient(Dio dio, {String baseUrl}) = _MDBClient;

  @GET(MDBEndPoint.discoverMovies)
  Future<HttpResponse<ResultList>> discoverMovies();

  @GET(MDBEndPoint.movieDetails)
  Future<HttpResponse<Results>> getDetails(
    @Path(MDBPath.movieId) String movieId,
  );
}

class MDBPath {
  static const String discover = 'discover';
  static const String movie = 'movie';
  static const String tv = 'tv';
  static const String movieId = 'movie_id';

  static const String discoverMovies = '$discover/$movie';
  static const String movieDetails = '$movie/{$movieId}';

  static const String discoverTV = '$discover/$tv';
}

class MDBEndPoint {
  static const String discoverMovies = MDBPath.discoverMovies;
  static const String discoverTV = MDBPath.discoverTV;
  static const String movieDetails = MDBPath.movieDetails;
}
