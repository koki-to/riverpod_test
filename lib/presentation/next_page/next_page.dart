import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_test/presentation/index_page/index_model.dart';

class NextPage extends HookWidget {
  const NextPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final count = useProvider(countProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('次のページ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            count.count == 0
                ? const Text(
                    'You have pushed the button this many times:',
                  )
                : const Text('元のcountを引き継いている'),
            Text(
              '${count.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
            GestureDetector(
              onTap: count.resetCount,
              child: Text(
                'リセット',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
