import 'package:cached_network_image/cached_network_image.dart';
import 'package:equifax_movie_db/features/details/ui/details_screen.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/widgets/poster_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../test_util.dart';

void main() {
  group('DetailsScreen', () {
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
      await tester.pumpApp(const DetailsScreen(
        movie: mockMovie,
        isLoading: false,
      ));
      expect(find.byType(SliverAppBar), findsOneWidget);
      expect(find.byType(CachedNetworkImage), findsNWidgets(2));
      expect(find.byType(PosterImage), findsOneWidget);

      expect(find.text(mockTitle), findsOneWidget);
      expect(find.text(mockOverview), findsOneWidget);
      expect(find.text(mockReleaseDate), findsOneWidget);
      expect(find.text(mockAverage.toString()), findsOneWidget);
      expect(find.text(mockVoteCount.toString()), findsOneWidget);
    });

    testWidgets('verify loading', (tester) async {
      await tester.pumpApp(const DetailsScreen(
        movie: mockMovie,
        isLoading: true,
      ));
      expect(find.byType(SliverAppBar), findsOneWidget);
      expect(find.byType(CachedNetworkImage), findsNWidgets(2));
      expect(find.byType(PosterImage), findsOneWidget);

      final skeletonScope =
          tester.widget<SkeletonizerScope>(find.byType(SkeletonizerScope));
      expect(skeletonScope.enabled, isTrue);
    });
  });
}
