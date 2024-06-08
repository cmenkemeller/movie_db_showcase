import 'package:dio/dio.dart';
import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/core/mdb_cache.dart';
import 'package:equifax_movie_db/core/mdb_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class MovieDatabaseApp extends StatelessWidget {
  const MovieDatabaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    const apiKey = String.fromEnvironment('TMDB_KEY');

    final baseOptions = BaseOptions(queryParameters: {'api_key': apiKey});
    Dio dio = Dio(baseOptions);
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(MDBCache.instance.interceptor());

    return MaterialApp.router(
      routerConfig: MDBRouter.router,
      builder: (context, child) => RepositoryProvider<MDBClient>(
        create: (context) => MDBClient(dio),
        child: child,
      ),
    );
  }
}
