import 'package:equifax_movie_db/core/mdb_theme.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/widgets/movie_list_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Movie> movieList;
  const HomeScreen({required this.movieList, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Text(
            'Movie DB App',
            style: context.textTheme.displayLarge,
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find your movies',
                style: context.textTheme.titleLarge,
              ),
              Row(
                children: [
                  SearchAnchor(
                    builder: (context, controller) => const SearchBar(),
                    suggestionsBuilder:
                        (BuildContext context, SearchController controller) {
                      return List.generate(5, (index) => const SizedBox());
                    },
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        SliverList.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 18),
            itemCount: movieList.length,
            itemBuilder: (context, index) {
              final movie = movieList[index];
              return MovieListTile(movie: movie);
            }),
      ]),
    );
  }
}
