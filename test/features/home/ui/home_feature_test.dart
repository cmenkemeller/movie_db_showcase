import 'package:equifax_movie_db/features/home/ui/home_feature.dart';
import 'package:equifax_movie_db/features/home/ui/home_presenter.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_util.dart';

void main() {
  group('HomeFeature', () {
    testWidgets('verify components present', (tester) async {
      await tester.pumpApp(const HomeFeature());
      expect(find.byType(HomePresenter), findsOneWidget);
    });
  });
}
