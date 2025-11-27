import 'dart:developer' as developer;

class PerformanceLogger {
  static void log(String message, Function() action) {
    final stopwatch = Stopwatch()..start();
    action();
    stopwatch.stop();

    final time = stopwatch.elapsedMilliseconds;
    final emoji = time > 100
        ? '🔴'
        : time > 50
        ? '🟡'
        : '🟢';

    developer.log('$emoji $message: ${time}ms');
  }

  static Future<T> logAsync<T>(
    String message,
    Future<T> Function() action,
  ) async {
    final stopwatch = Stopwatch()..start();
    final result = await action();
    stopwatch.stop();

    final time = stopwatch.elapsedMilliseconds;
    final emoji = time > 100
        ? '🔴'
        : time > 50
        ? '🟡'
        : '🟢';

    developer.log('$emoji $message: ${time}ms');
    return result;
  }
}
