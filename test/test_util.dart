import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/features/details/cubit/details_cubit.dart';
import 'package:equifax_movie_db/features/home/cubit/home_cubit.dart';
import 'package:equifax_movie_db/features/home/cubit/home_state.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/models/movie_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:retrofit/dio.dart';

Response mockResponse = Response(requestOptions: RequestOptions());

class MockMDBClient extends Mock implements MDBClient {
  @override
  Future<HttpResponse<MovieList>> discoverMovies() async {
    return Future.value(HttpResponse(MovieList(), mockResponse));
  }

  @override
  Future<HttpResponse<Movie>> getDetails(String movieId) async {
    return Future.value(
        HttpResponse(const Movie(id: 0, title: ''), mockResponse));
  }
}

class MockHomeCubit extends MockCubit<HomeState> implements HomeCubit {}

class MockDetailsCubit extends MockCubit<DetailsState>
    implements DetailsCubit {}

extension AppTester on WidgetTester {
  Future<void> pumpApp(
    Widget widgetUnderTest, {
    HomeCubit? homeCubit,
    DetailsCubit? detailsCubit,
    MDBClient? client,
    NavigatorObserver? navigatorObserver,
  }) async {
    await mockNetworkImages(
      () async => pumpWidget(
        MultiRepositoryProvider(
          providers: [
            RepositoryProvider.value(
              value: client ?? MockMDBClient(),
            ),
          ],
          child: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: homeCubit ?? MockHomeCubit()),
              BlocProvider.value(value: detailsCubit ?? MockDetailsCubit()),
            ],
            child: MaterialApp(
              home: Scaffold(body: widgetUnderTest),
              navigatorObservers: [
                if (navigatorObserver != null) navigatorObserver,
              ],
            ),
          ),
        ),
      ),
    );
    await pump();
  }
}
