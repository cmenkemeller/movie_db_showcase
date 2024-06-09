import 'package:cached_network_image/cached_network_image.dart';
import 'package:equifax_movie_db/core/mdb_theme.dart';
import 'package:equifax_movie_db/i18n/strings.g.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/widgets/poster_image.dart';
import 'package:equifax_movie_db/widgets/title_subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  final bool isLoading;
  const DetailsScreen({required this.movie, this.isLoading = true, super.key});

  static const double appBarHeight = 120;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl:
                    'https://image.tmdb.org/t/p/w1280${movie.backdropPath}',
                fit: BoxFit.cover,
                placeholder: (context, url) => Center(
                  child: SpinKitPulse(
                    color: context.theme.colorScheme.onPrimaryContainer,
                  ),
                ),
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
                title: '${localize.overview}:',
                subtitle: movie.overview,
              ),
              const SizedBox(height: 12),
              TitleSubtitleText(
                title: '${localize.releaseDate}:',
                subtitle: movie.releaseDate.toString(),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TitleSubtitleText(
                      title: '${localize.averageRating}:',
                      subtitle: movie.voteAverage.toString(),
                    ),
                  ),
                  Expanded(
                    child: TitleSubtitleText(
                      title: '${localize.voteCount}:',
                      subtitle: movie.voteCount.toString(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              TitleSubtitleText(
                title: '${localize.popularity}:',
                subtitle: movie.popularity.toString(),
              ),
            ]),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
