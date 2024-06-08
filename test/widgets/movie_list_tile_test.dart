import 'package:equifax_movie_db/models/movie.dart';
import 'package:equifax_movie_db/widgets/movie_list_tile.dart';
import 'package:equifax_movie_db/widgets/poster_image.dart';
import 'package:equifax_movie_db/widgets/title_subtitle_text.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_util.dart';

void main() {
  group('MovieListTile', () {
    const testTitle = 'Test Title';
    const testId = 1235;
    const testReleaseDate = '2021-01-01';
    const mockMovie = Movie(
      id: testId,
      title: testTitle,
      releaseDate: testReleaseDate,
    );

    testWidgets('should render components', (tester) async {
      await tester.pumpApp(const MovieListTile(movie: mockMovie));
      expect(find.text(testTitle), findsOneWidget);
      expect(find.byType(PosterImage), findsOneWidget);
      expect(find.byType(TitleSubtitleText), findsNWidgets(3));
    });
  });
}
