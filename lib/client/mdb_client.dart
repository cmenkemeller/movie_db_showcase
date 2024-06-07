import 'package:equifax_movie_db/models/results_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'mdb_client.g.dart';

@RestApi(baseUrl: "https://api.themoviedb.org/3")
abstract class MDBClient {
  factory MDBClient(Dio dio, {String baseUrl}) = _MDBClient;

  @GET(MDBEndPoint.discoverMovies)
  Future<HttpResponse<ResultList>> discoverMovies(
    @DioOptions() Options options,
  );
}

class MDBPath {
  static const String discover = 'discover';
}

class MDBEndPoint {
  static const String discoverMovies = '${MDBPath.discover}/movie';
  static const String discoverTV = '${MDBPath.discover}/tv';
}
