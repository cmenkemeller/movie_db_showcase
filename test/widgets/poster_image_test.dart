import 'package:cached_network_image/cached_network_image.dart';
import 'package:equifax_movie_db/widgets/poster_image.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_util.dart';

void main() {
  group('PosterImage', () {
    testWidgets('should render components', (tester) async {
      await tester.pumpApp(const PosterImage(posterPath: 'test'));
      expect(find.byType(CachedNetworkImage), findsOneWidget);
    });
  });
}
