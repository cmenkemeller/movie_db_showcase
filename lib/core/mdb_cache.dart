import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';

class MDBCache {
  factory MDBCache() {
    return _instance;
  }

  MDBCache._internal() {
    _cacheStore = HiveCacheStore(null);
  }

  static final MDBCache _instance = MDBCache._internal();

  late CacheStore _cacheStore;

  static MDBCache get instance => _instance;
  CacheStore get cacheStore => _cacheStore;

  Options options() {
    return Options(
      extra: _customCacheOptions().toExtra(),
    );
  }

  DioCacheInterceptor interceptor() {
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
