import 'package:equifax_movie_db/features/details/ui/details_feature.dart';
import 'package:equifax_movie_db/features/home/ui/home_feature.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/widgets/poster_image.dart';
import 'package:equifax_movie_db/widgets/title_subtitle_text.dart';
import 'package:flutter/material.dart';

class MovieListTile extends StatelessWidget {
  final Movie movie;
  const MovieListTile({required this.movie, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => DetailsFeature(id: movie.id.toString()).push(context),
      child: IntrinsicHeight(
        child: Row(children: [
          PosterImage(posterPath: movie.posterPath ?? ''),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleSubtitleText(title: 'Title:', subtitle: movie.title),
              if (movie.releaseDate != null)
                TitleSubtitleText(
                    title: 'Release Date:', subtitle: movie.releaseDate ?? ''),
              TitleSubtitleText(
                  title: 'Average Rating:',
                  subtitle: movie.voteAverage.toString()),
            ],
          ),
        ]),
      ),
    );
  }
}
