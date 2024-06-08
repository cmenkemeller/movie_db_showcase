import 'package:equifax_movie_db/models/movie.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  const DetailsScreen({required this.movie, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(movie.title);
  }
}
