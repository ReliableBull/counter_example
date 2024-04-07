import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    ref.onDispose(
      () {
        print("dispose");
      },
    );
    return 0;
  }

  void increament() {
    state = state + 1;
  }

  void decreament() {
    state = state - 1;
  }
}
