import 'package:equifax_movie_db/core/mdb_theme.dart';
import 'package:equifax_movie_db/features/details/ui/details_feature.dart';
import 'package:equifax_movie_db/features/home/ui/home_feature.dart';
import 'package:equifax_movie_db/models/results_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Results> resultList;
  const HomeScreen({required this.resultList, super.key});

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
        SliverList.builder(
          itemCount: resultList.length,
          itemBuilder: (context, index) {
            final movie = resultList[index];
            return ListTile(
              title: Text(movie.title),
              subtitle: movie.overview != null ? Text(movie.overview!) : null,
              onTap: () =>
                  DetailsFeature(id: movie.id.toString()).push(context),
            );
          },
        ),
      ]),
    );
  }
}
