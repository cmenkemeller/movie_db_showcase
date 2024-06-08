import 'package:cached_network_image/cached_network_image.dart';
import 'package:equifax_movie_db/core/mdb_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PosterImage extends StatelessWidget {
  final String posterPath;
  const PosterImage({required this.posterPath, super.key});

  static const double height = 120;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: CachedNetworkImage(
        imageUrl: 'https://image.tmdb.org/t/p/w500$posterPath',
        width: 95,
        height: height,
        fit: BoxFit.cover,
        placeholder: (context, url) => Center(
          child: SpinKitPulse(
            color: context.theme.colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
  }
}
