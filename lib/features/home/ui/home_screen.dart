import 'package:equifax_movie_db/core/mdb_theme.dart';
import 'package:equifax_movie_db/features/home/ui/categories_widget.dart';
import 'package:equifax_movie_db/features/search/ui/search_screen.dart';
import 'package:equifax_movie_db/i18n/strings.g.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/util/category_enum.dart';
import 'package:equifax_movie_db/util/widget_extension.dart';
import 'package:equifax_movie_db/widgets/movie_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends StatelessWidget {
  final List<Movie> movieList;
  final bool isLoading;
  final CategoryEnum selectedCategory;
  const HomeScreen({
    required this.movieList,
    required this.selectedCategory,
    this.isLoading = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar.large(
        pinned: true,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11.0),
          child: Text(
            localize.appName,
          ),
        ),
        titleTextStyle: context.textTheme.displayLarge,
      ),
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              localize.findYourMovies,
              style: context.textTheme.headlineLarge,
            ),
            const SizedBox(height: 18),
            const SearchWidget(),
            const SizedBox(height: 22),
          ],
        ).paddingHorizontal(MDBTheme.paddingMargin),
      ),
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              localize.categories,
              style: context.textTheme.headlineLarge,
            ).paddingHorizontal(MDBTheme.paddingMargin),
            const SizedBox(height: 18),
            CategoriesWidget(
              selectedCategory: selectedCategory,
            ),
            const SizedBox(height: 28),
          ],
        ),
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
