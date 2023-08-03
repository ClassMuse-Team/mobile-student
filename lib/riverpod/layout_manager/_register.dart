import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterScreenIndex extends StateNotifier<int> {
  RegisterScreenIndex() : super(0);

  void setValue(int value) => value < 2 ? state = value : state = 0;
}
