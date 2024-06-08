import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/features/details/cubit/details_cubit.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:retrofit/retrofit.dart';

class MockMDBClient extends Mock implements MDBClient {}

void main() {
  group('DetailsCubit', () {
    late MockMDBClient client;
    const mockId = 0;

    const mockMovie = Movie(id: mockId, title: '');

    setUp(() {
      client = MockMDBClient();
    });

    blocTest(
      'emits correct states on getDetails success',
      setUp: () => when(() => client.getDetails(mockId.toString())).thenAnswer(
        (_) async => HttpResponse(
          mockMovie,
          Response(requestOptions: RequestOptions()),
        ),
      ),
      build: () => DetailsCubit(client: client),
      act: (bloc) => bloc.loadDetails(id: mockMovie.id.toString()),
      expect: () => [
        DetailsState.loading(),
        const DetailsState(isLoading: false, movie: mockMovie),
      ],
    );
  });
}
