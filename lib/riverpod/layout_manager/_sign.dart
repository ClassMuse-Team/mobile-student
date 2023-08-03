import 'package:flutter_riverpod/flutter_riverpod.dart';

class IsRegisterMode extends StateNotifier<bool> {
  IsRegisterMode() : super(false);

  void setValue(bool value) => state = value;
}
