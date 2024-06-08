import 'package:equifax_movie_db/widgets/title_subtitle_text.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_util.dart';

void main() {
  group('TitleSubtitleText', () {
    testWidgets('should render components', (tester) async {
      const testTitle = 'Test Title';
      const testSubtitle = 'Test Subtitle';
      await tester.pumpApp(const TitleSubtitleText(
        title: testTitle,
        subtitle: testSubtitle,
      ));
      expect(find.text(testTitle), findsOneWidget);
      expect(find.text(testSubtitle), findsOneWidget);
    });
  });
}
