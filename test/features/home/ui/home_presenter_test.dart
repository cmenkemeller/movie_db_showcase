import 'package:bloc_test/bloc_test.dart';
import 'package:equifax_movie_db/features/home/cubit/home_cubit.dart';
import 'package:equifax_movie_db/features/home/ui/home_presenter.dart';
import 'package:equifax_movie_db/features/home/ui/home_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../test_util.dart';

class MockHomeCubit extends MockCubit<HomeState> implements HomeCubit {}

void main() {
  group('HomeFeature', () {
    late MockHomeCubit homeCubit;

    setUp(() {
      homeCubit = MockHomeCubit();
      when(() => homeCubit.state)
          .thenReturn(const HomeState(movieList: [], isLoading: false));
    });

    testWidgets('verify components present', (tester) async {
      await tester.pumpApp(
        const HomePresenter(),
        homeCubit: homeCubit,
      );
      expect(find.byType(HomeScreen), findsOneWidget);
    });
  });
}
