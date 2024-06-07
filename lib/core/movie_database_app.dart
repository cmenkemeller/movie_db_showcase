import 'package:dio/dio.dart';
import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDatabaseApp extends StatelessWidget {
  const MovieDatabaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    const apiKey = String.fromEnvironment('TMDB_KEY');

    final baseOptions = BaseOptions(queryParameters: {'api_key': apiKey});
    Dio dio = Dio(baseOptions);

    return RepositoryProvider<MDBClient>(
      create: (context) => MDBClient(dio),
      child: const Placeholder(),
    );
  }
}
