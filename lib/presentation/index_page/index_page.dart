import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_test/presentation/index_page/index_model.dart';
import 'package:riverpod_test/presentation/next_page/next_page.dart';

class IndexPage extends HookWidget {
  const IndexPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final count = useProvider(countProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Riverpodのテスト'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              count.count == 0
                  ? const Text(
                      'You have pushed the button this many times:',
                    )
                  : const Text('0以外です'),
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
              GestureDetector(
                onTap: () => Navigator.push<NextPage>(context,
                    MaterialPageRoute(builder: (context) => const NextPage())),
                child: Text(
                  '次のページへ',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: count.addCount,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ));
  }
}
