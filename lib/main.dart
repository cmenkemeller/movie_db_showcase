import 'package:equifax_movie_db/core/mdb_cache.dart';
import 'package:equifax_movie_db/core/movie_database_app.dart';
import 'package:equifax_movie_db/i18n/strings.g.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //Change language here-
  LocaleSettings.setLocale(AppLocale.en);

  runApp(TranslationProvider(
    child: MovieDatabaseApp(
      cache: MDBCache(),
    ),
  ));
}
