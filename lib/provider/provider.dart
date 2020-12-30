import 'package:flutter/foundation.dart';

class CounterNotifier with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  increment(value) {
    print(value);
    _count++;
    // 核心方法，通知刷新UI,调用build方法
    notifyListeners();
  }
}
