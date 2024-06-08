import 'package:flutter/material.dart';

class PosterImage extends StatelessWidget {
  final String posterPath;
  const PosterImage({required this.posterPath, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        'https://image.tmdb.org/t/p/w500$posterPath',
        width: 95,
        height: 120,
        fit: BoxFit.cover,
      ),
    );
  }
}
