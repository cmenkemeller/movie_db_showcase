import 'package:equifax_movie_db/core/mdb_cache.dart';
import 'package:equifax_movie_db/core/movie_database_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MovieDatabaseApp(
    cache: MDBCache(),
  ));
}
