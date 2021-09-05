import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_test/presentation/next_page/next_page.dart';

class SecondPage extends HookWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('次のページ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('元のcountを引き継いている'),
            GestureDetector(
              onTap: () => Navigator.push<NextPage>(
                  context, MaterialPageRoute(builder: (_) => const NextPage())),
              child: Text(
                '元のページへ',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
