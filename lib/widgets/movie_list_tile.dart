import 'package:equifax_movie_db/features/details/ui/details_route.dart';
import 'package:equifax_movie_db/features/home/ui/home_route.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/widgets/poster_image.dart';
import 'package:equifax_movie_db/widgets/title_subtitle_text.dart';
import 'package:flutter/material.dart';

class MovieListTile extends StatefulWidget {
  final Movie movie;
  final EdgeInsets? padding;

  const MovieListTile({required this.movie, this.padding, super.key});

  @override
  State<MovieListTile> createState() => _MovieListTileState();
}

class _MovieListTileState extends State<MovieListTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0.2, 0.0), end: Offset.zero).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => DetailsRoute(id: widget.movie.id.toString()).push(context),
      child: Padding(
        padding: widget.padding ?? const EdgeInsets.all(0),
        child: IntrinsicHeight(
          child: Row(children: [
            PosterImage(posterPath: widget.movie.posterPath ?? ''),
            const SizedBox(width: 8),
            Expanded(
              child: SlideTransition(
                position: _slideAnimation,
                child: FadeTransition(
                  opacity: _opacityAnimation,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TitleSubtitleText(
                        title: 'Title:',
                        subtitle: widget.movie.title,
                        subtitleMaxLines: 1,
                      ),
                      if (widget.movie.releaseDate != null)
                        TitleSubtitleText(
                            title: 'Release Date:',
                            subtitle: widget.movie.releaseDate ?? ''),
                      TitleSubtitleText(
                          title: 'Average Rating:',
                          subtitle: widget.movie.voteAverage.toString()),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
