import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/features/home/cubit/home_cubit.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/models/movie_list.dart';
import 'package:equifax_movie_db/util/category_enum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:retrofit/retrofit.dart';

class MockMDBClient extends Mock implements MDBClient {}

void main() {
  group('HomeCubit', () {
    late MockMDBClient client;

    const mockMovieList = [Movie(id: 0, title: '')];

    setUp(() {
      client = MockMDBClient();
    });

    blocTest(
      'emits correct states on discoverMovies success',
      setUp: () => when(() => client.discoverMovies(any())).thenAnswer(
        (_) async => HttpResponse(
          MovieList(results: mockMovieList),
          Response(requestOptions: RequestOptions()),
        ),
      ),
      build: () => HomeCubit(client: client),
      act: (bloc) => bloc.getMovies(),
      expect: () => [
        HomeState.loading(),
        const HomeState(isLoading: false, movieList: mockMovieList),
      ],
    );

    blocTest(
      'emits correct states on updateSortBy',
      setUp: () => when(() => client.discoverMovies(any())).thenAnswer(
        (_) async => HttpResponse(
          MovieList(results: mockMovieList),
          Response(requestOptions: RequestOptions()),
        ),
      ),
      build: () => HomeCubit(client: client),
      act: (bloc) => bloc.updateSortBy(CategoryEnum.popular),
      expect: () => [
        HomeState.loading().copyWith(selectedCategory: CategoryEnum.popular),
        const HomeState(isLoading: false, movieList: mockMovieList, selectedCategory: CategoryEnum.popular),
      ],
    );
  });
}
