import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:path_provider/path_provider.dart';

class MDBCache {
  late CacheStore _cacheStore;

  Options options() {
    return Options(
      extra: _customCacheOptions().toExtra(),
    );
  }

  Future<DioCacheInterceptor> init() async {
    final tempDir = await getTemporaryDirectory();
    _cacheStore = HiveCacheStore(tempDir.path);
    return _interceptor();
  }

  DioCacheInterceptor _interceptor() {
    final options = CacheOptions(
      store: _cacheStore,
    );
    return DioCacheInterceptor(options: options);
  }

  Future<void> clear() async {
    await _cacheStore.clean();
  }

  CacheOptions _customCacheOptions() {
    return CacheOptions(
      store: _cacheStore,
      policy: CachePolicy.forceCache,
    );
  }
}
