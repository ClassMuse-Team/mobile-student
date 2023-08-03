import 'package:flutter_riverpod/flutter_riverpod.dart';

class IsLogined extends StateNotifier<bool> {
  IsLogined() : super(false);

  void setValue(bool value) => state = value;
}

class ScreenSelectedIndex extends StateNotifier<int> {
  ScreenSelectedIndex() : super(0);

  void setValue(int value) => value <= 4 ? state = value : state = 0;
}
