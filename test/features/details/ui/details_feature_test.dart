import 'package:equifax_movie_db/features/details/ui/details_feature.dart';
import 'package:equifax_movie_db/features/details/ui/details_presenter.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_util.dart';

void main() {
  group('DetailsFeature', () {
    const mockId = 1235;

    testWidgets('verify components present', (tester) async {
      await tester.pumpApp(DetailsFeature(id: mockId.toString()));
      expect(find.byType(DetailsPresenter), findsOneWidget);
    });
  });
}
