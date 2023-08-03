import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InputValue extends StateNotifier<String> {
  InputValue() : super('');

  void setValue(String value) {
    state = value;
    debugPrint(state.toString());
  }
}
