import 'package:equifax_movie_db/features/home/ui/home_screen.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/widgets/movie_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../test_util.dart';

void main() {
  group('HomeScreen', () {
    const mockTitle = 'Mock Title';
    const mockOverview = 'Mock Overview';

    const mockAverage = 7.5;
    const mockReleaseDate = '2021-01-01';
    const mockVoteCount = 1000;
    const mockPopularity = 1023.0;

    const mockMovie = Movie(
      id: 0,
      title: mockTitle,
      overview: mockOverview,
      voteAverage: mockAverage,
      releaseDate: mockReleaseDate,
      voteCount: mockVoteCount,
      popularity: mockPopularity,
    );

    testWidgets('should render components', (tester) async {
      await tester.pumpApp(const HomeScreen(
        movieList: [mockMovie, mockMovie],
        isLoading: false,
      ));
      expect(find.byType(SliverAppBar), findsOneWidget);
      expect(find.byType(SearchBar), findsOneWidget);
      expect(find.byType(MovieListTile), findsNWidgets(2));
    });

    testWidgets('verify loading', (tester) async {
      await tester.pumpApp(const HomeScreen(
        movieList: [mockMovie],
        isLoading: true,
      ));
      expect(find.byType(SliverAppBar), findsOneWidget);

      final skeletonScope =
          tester.widget<SkeletonizerScope>(find.byType(SkeletonizerScope));
      expect(skeletonScope.enabled, isTrue);
    });
  });
}
