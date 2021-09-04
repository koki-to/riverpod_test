import 'package:flutter/cupertino.dart';

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
