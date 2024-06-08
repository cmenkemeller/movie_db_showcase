import 'package:equifax_movie_db/core/mdb_theme.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/widgets/poster_image.dart';
import 'package:equifax_movie_db/widgets/title_subtitle_text.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  const DetailsScreen({required this.movie, super.key});

  static const double appBarHeight = 120;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          snap: true,
          automaticallyImplyLeading: false,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              'https://image.tmdb.org/t/p/w1280${movie.backdropPath}',
              fit: BoxFit.cover,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(appBarHeight),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29.0),
              child: Transform.translate(
                offset: const Offset(0, PosterImage.height / 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    PosterImage(
                      posterPath: movie.posterPath ?? '',
                    ),
                    const SizedBox(width: 12),
                    Flexible(
                      child: Text(
                        movie.title,
                        style: context.textTheme.headlineLarge,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 29.0)
              .copyWith(top: PosterImage.height / 2 + 18),
          sliver: SliverList.list(children: [
            TitleSubtitleText(
              title: 'Overview:',
              subtitle: movie.overview,
            ),
            const SizedBox(height: 12),
            TitleSubtitleText(
              title: 'Release Date:',
              subtitle: movie.releaseDate.toString(),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TitleSubtitleText(
                    title: 'Average Rating:',
                    subtitle: movie.voteAverage.toString(),
                  ),
                ),
                Expanded(
                  child: TitleSubtitleText(
                    title: 'Vote Count:',
                    subtitle: movie.voteCount.toString(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            TitleSubtitleText(
              title: 'Popularity:',
              subtitle: movie.popularity.toString(),
            ),
          ]),
        ),
      ],
    );
  }
}

class DetailsSliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final Widget child;
  const DetailsSliverAppBar({
    required this.expandedHeight,
    required this.child,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
