import 'package:bloc_test/bloc_test.dart';
import 'package:equifax_movie_db/features/details/cubit/details_cubit.dart';
import 'package:equifax_movie_db/features/details/ui/details_presenter.dart';
import 'package:equifax_movie_db/features/details/ui/details_screen.dart';
import 'package:equifax_movie_db/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../test_util.dart';

class MockDetailsCubit extends MockCubit<DetailsState>
    implements DetailsCubit {}

void main() {
  group('DetailsFeature', () {
    late MockDetailsCubit detailsCubit;
    const mockId = 1235;

    setUp(() {
      detailsCubit = MockDetailsCubit();
      when(() => detailsCubit.state).thenReturn(const DetailsState(
          movie: Movie(id: mockId, title: ''), isLoading: false));
    });

    testWidgets('verify components present', (tester) async {
      await tester.pumpApp(
        const DetailsPresenter(),
        detailsCubit: detailsCubit,
      );
      expect(find.byType(DetailsScreen), findsOneWidget);
      expect(find.byType(FloatingActionButton), findsOneWidget);
    });
  });
}
