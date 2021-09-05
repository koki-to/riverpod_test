import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final countProvider = ChangeNotifierProvider((ref) => IndexModel());

class IndexModel extends ChangeNotifier {
  int count = 0;

  void addCount() {
    count++;
    notifyListeners();
  }

  void resetCount() {
    count = 0;
    notifyListeners();
  }
}
