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
    return Hero(
      tag: posterPath,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: 'https://image.tmdb.org/t/p/w500$posterPath',
          width: 95,
          height: height,
          fit: BoxFit.cover,
          errorWidget: (context, url, error) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MDBTheme.radiusM),
              border: Border.all(
                color: context.theme.colorScheme.error,
                width: 1.0,
              ),
            ),
            child: Icon(
              Icons.broken_image_outlined,
              color: context.theme.colorScheme.error,
            ),
          ),
          placeholder: (context, url) => Center(
            child: SpinKitPulse(
              color: context.theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}
