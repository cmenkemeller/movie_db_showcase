import 'package:equifax_movie_db/core/mdb_theme.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/util/widget_extension.dart';
import 'package:equifax_movie_db/widgets/movie_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends StatelessWidget {
  final List<Movie> movieList;
  final bool isLoading;
  const HomeScreen({required this.movieList, this.isLoading = true, super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar.large(
        pinned: true,
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 11.0),
          child: Text(
            'Movie DB App',
          ),
        ),
        titleTextStyle: context.textTheme.displayLarge,
      ),
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Find your movies',
              style: context.textTheme.headlineLarge,
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Expanded(
                  child: SearchAnchor(
                    builder: (context, controller) => const SearchBar(
                      hintText: 'Search Here ...',
                      constraints: BoxConstraints(maxHeight: 42, minHeight: 42),
                    ),
                    suggestionsBuilder:
                        (BuildContext context, SearchController controller) {
                      return List.generate(5, (index) => const SizedBox());
                    },
                  ),
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 22),
          ],
        ).paddingHorizontal(MDBTheme.paddingMargin),
      ),
      Skeletonizer.sliver(
        enabled: isLoading,
        child: SliverList.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 18),
            itemCount: movieList.length,
            itemBuilder: (context, index) {
              final movie = movieList[index];
              return MovieListTile(
                movie: movie,
                padding: const EdgeInsets.symmetric(
                  horizontal: MDBTheme.paddingMargin,
                ),
              );
            }),
      ),
      const SliverToBoxAdapter(
          child: SizedBox(
        height: 50,
      )),
    ]);
  }
}
