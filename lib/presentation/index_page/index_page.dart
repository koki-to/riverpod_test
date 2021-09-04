import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:riverpod_test/presentation/index_page/index_model.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<IndexModel>(
      create: (_) => IndexModel(),
      child: Consumer<IndexModel>(builder: (context, model, snapshot) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('Riverpodのテスト'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${model.count}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  GestureDetector(
                    onTap: () => model.resetCount(),
                    child: Text(
                      'リセット',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: model.addCount,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ));
      }),
    );
  }
}
