import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/core/mdb_cache.dart';
import 'package:equifax_movie_db/core/mdb_router.dart';
import 'package:equifax_movie_db/core/mdb_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class MovieDatabaseApp extends StatelessWidget {
  final MDBCache cache;
  const MovieDatabaseApp({required this.cache, super.key});

  @override
  Widget build(BuildContext context) {
    const apiKey = String.fromEnvironment('TMDB_KEY');

    final baseOptions = BaseOptions(queryParameters: {'api_key': apiKey});
    Dio dio = Dio(baseOptions);

    dio.interceptors.add(PrettyDioLogger());
    return MaterialApp.router(
        routerConfig: MDBRouter.router,
        theme: MDBTheme.theme,
        builder: (context, child) {
          return FutureBuilder<DioCacheInterceptor>(
              future: cache.init(),
              builder: (context, snapshot) {
                final cacheInterceptor = snapshot.data;

                if (cacheInterceptor != null) {
                  dio.interceptors.add(cacheInterceptor);
                }
                if (snapshot.hasData && cacheInterceptor != null) {
                  return RepositoryProvider<MDBClient>(
                    create: (context) => MDBClient(dio),
                    child: child,
                  );
                }
                return const CircularProgressIndicator();
              });
        });
  }
}
