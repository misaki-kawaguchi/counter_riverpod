import 'package:counter_riverpod/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter example'),
      ),
      body: Center(
        // Providerを読み取る
        child: Consumer(
          builder: (BuildContext context, WidgetRef ref, _) {
            final count = ref.watch(counterProvider);
            return Text('$count');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // プロバイダの値を取得する（監視はしない）
        onPressed: () => ref.read(counterProvider.state).state++,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
