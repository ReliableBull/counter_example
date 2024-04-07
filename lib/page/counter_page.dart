import 'package:firstapp/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentCount = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Widget"),
      ),
      body: Center(
        child: Text("$currentCount"),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            ref.read(counterProvider.notifier).increament();
          },
          label: const Text("inc")),
    );
  }
}
