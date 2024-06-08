import 'package:flutter/material.dart';

class PosterImage extends StatelessWidget {
  final String posterPath;
  const PosterImage({required this.posterPath, super.key});

  static const double height = 120;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        'https://image.tmdb.org/t/p/w500$posterPath',
        width: 95,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
