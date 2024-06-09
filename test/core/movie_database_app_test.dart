import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/core/mdb_cache.dart';
import 'package:equifax_movie_db/core/movie_database_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_util.dart';

class MockMDBCache extends Mock implements MDBCache {}

void main() {
  late MockMDBCache cache;
  const mockApiKey = '1234';
  setUp(() {
    cache = MockMDBCache();
    when(() => cache.init()).thenAnswer((_) async {
      return Future.value(
          DioCacheInterceptor(options: const CacheOptions(store: null)));
    });
  });

  testWidgets('MovieDatabaseApp', (tester) async {
    await tester.pumpApp(MovieDatabaseApp(
      cache: cache,
      apiKey: mockApiKey,
    ));
    verify(() => cache.init()).called(1);
    expect(find.byType(RepositoryProvider<MDBClient>), findsOneWidget);
  });
}
