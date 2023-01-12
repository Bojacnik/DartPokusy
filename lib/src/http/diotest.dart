import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio/dio.dart';

void main() async {
  final options = CacheOptions(
    // A default store is required for interceptor.
    store: MemCacheStore(),

    policy: CachePolicy.request,
    hitCacheOnErrorExcept: [401, 403],
    maxStale: const Duration(days: 1),
    // Default. Allows 3 cache sets and ease cleanup.
    priority: CachePriority.normal,
    cipher: null,
    // Default. Key builder to retrieve requests.
    keyBuilder: CacheOptions.defaultCacheKeyBuilder,
    // Default. Allows to cache POST requests.
    // Overriding [keyBuilder] is strongly recommended when [true].
    allowPostMethod: false,
  );

  var dio = Dio()..interceptors.add(DioCacheInterceptor(options: options));

  try {
    Stopwatch timer = Stopwatch();
    timer.start();
    Response<dynamic> response =
        await dio.get("http://www.jakubec.lab.uzlabina.cz");
    timer.stop();
    print("Non-cached: " + timer.elapsedMilliseconds.toString() + "ms");
    timer.reset();
    timer.start();
    Response<dynamic> responseCachedHopefully =
        await dio.get("http://www.jakubec.lab.uzlabina.cz");
    timer.stop();
    print("Cached: " + timer.elapsedMilliseconds.toString() + "ms");

    print("Status code: " + response.statusCode.toString());
  } on DioError {
    print("Something went wrong! Are you connected to the Internet?");
  }
}
