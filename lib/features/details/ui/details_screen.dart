import 'package:equifax_movie_db/models/results_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Results result;
  const DetailsScreen({required this.result, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(result.title);
  }
}
